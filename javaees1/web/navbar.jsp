<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .custom-nav {
        background-color: #24135F;
    }

    #addButton {
        color: white;
        margin: 20px 0 10px 1px;
        font-size: 16px;
        border: none;
        border-radius: 4px;
        padding: 8px 16px;
    }

    #detailButton {
        color:#fff;
        text-decoration: none;
        font-size: 14px;
        padding: 4px 10px;
        border-radius: 4px;

    }

    #detailBlock {
        display: flex;
        justify-content: center;
        width: 850px;
        margin-left: 190px;
        margin-top: 18px
    }
</style>

<nav class="navbar navbar-expand-lg custom-nav">
    <div class="container-fluid">
        <a class="navbar-brand" href="/" style="font-weight: bold; color: #fff">TASK MANAGER</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/" style="font-weight: bold; color: #fff">Все задания</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
