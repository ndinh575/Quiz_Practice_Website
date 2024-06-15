<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="myTags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quizzes List</title>
        <%@include file="/common/ImportBootstrap.jsp" %>
        <link rel="stylesheet" href="admin/common/admin-common.css">
        <link rel="stylesheet" href="public/css/sortable/sortable-theme-bootstrap.css">
        <script src="admin/common/admin-common.js"></script>
    </head>
    <body>
        <div class="admin-layout">
            <%@include file="/admin/common/admin-header.jsp" %>
            <%@include file="/admin/common/admin-sidebar.jsp" %>
            <main class="admin-main" x-data="state">
                <div class="container">
                    <h2 class="my-4">
                        <i class="bi bi-clipboard-check-fill"></i> Quizzes List
                    </h2>
                    <ul class="nav nav-tabs">
                        <li @click="deselectAll" class="nav-item">
                            <myTags:QueryPreservingLink
                                className="nav-link ${empty param.published or param.published eq '1' ? 'active' : ''}"
                                key="published"
                                value="1"
                                href="admin/quizzeslist"
                            >Published</myTags:QueryPreservingLink>
                        </li>
                        <li @click="deselectAll" class="nav-item">
                            <myTags:QueryPreservingLink
                                className="nav-link ${param.published eq '0' ? 'active' : ''}"
                                key="published"
                                value="0"
                                href="admin/quizzeslist"
                            >Draft</myTags:QueryPreservingLink>
                        </li>
                    </ul>

                    <%@include file="/admin/quizzes/QuizzesListForm.jsp" %>

                    <div class="my-4 card">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">
                                <i class="bi bi-wrench"></i>
                                Actions
                            </h5>
                            <div class="d-flex mt-3 gap-2">
                                <c:if test="${result.getTotalPages() > 0}">
                                    <button x-show="!allSelected" @click="selectAll" class="btn btn-primary">
                                        <i class="bi bi-check2-all"></i>
                                        Select All
                                    </button>
                                    <button x-show="allSelected" @click="deselectAll" class="btn btn-primary">
                                        <i class="bi bi-check2-all"></i>
                                        Deselect All
                                    </button>
                                </c:if>
                                <button data-bs-target="#deleteModal" data-bs-toggle="modal" class="btn btn-danger" :disabled="length === 0">
                                    <i class="bi bi-trash"></i>
                                    Delete
                                    <span x-show="length > 0">
                                        (<span x-text="length"></span>)
                                    </span>
                                </button>
                                <c:choose>
                                    <c:when test="${param.published eq '0'}">
                                        <button data-bs-target="#publishModal" data-bs-toggle="modal" class="btn btn-warning" :disabled="length === 0">
                                            <i class="bi bi-cloud-arrow-up"></i>
                                            Published Selected
                                            <span x-show="length > 0">
                                                (<span x-text="length"></span>)
                                            </span>
                                        </button>
                                    </c:when>
                                    <c:when test="${empty param.published or param.published eq '1'}">
                                        <button data-bs-target="#markDraftModal" data-bs-toggle="modal" class="btn btn-warning" :disabled="length === 0">
                                            <i class="bi bi-recycle"></i>
                                            Mark Draft
                                            <span x-show="length > 0">
                                                (<span x-text="length"></span>)
                                            </span>
                                        </button>
                                    </c:when>
                                </c:choose>
                                <div class="flex-grow-1"></div>
                                <button x-show="length > 0" @click="reset" class="btn btn-outline-danger">
                                    <i class="bi bi-x-lg"></i>
                                    Reset
                                </button>
                                <button x-show="length === 0" class="btn btn-primary">
                                    <i class="bi bi-plus-circle"></i>
                                    Add New Quiz
                                </button>
                            </div>
                        </div>
                    </div>

                    <%@include file="/admin/quizzes/QuizzesListTable.jsp" %>

                    <c:if test="${result.getTotalPages() > 0}">
                        <myTags:Paginator
                            className="mt-3 d-flex justify-content-end"
                            current="${param.page}"
                            total="${result.getTotalPages()}"
                            size="1"
                            url="admin/quizzeslist"
                        />
                    </c:if>
                </div>

                <%@include file="/admin/quizzes/QuizModals.jsp" %>
            </main>
        </div>

        <script src="admin/quizzes/QuizzesList.js"></script>
        <script src="public/js/sortable/sortable.min.js"></script>
        <script src="public/js/alpine/persist.min.js"></script>
        <script src="public/js/alpine/core.min.js"></script>
    </body>
</html>

