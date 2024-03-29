<c-projectlist>
    <div class="c-projectList">
        <h2 class="t-projectList__prologueTitle" data-i18n="s-projectList-title"></h2>
        <ol class="u-projectList-wrapper">
            <li each = { opts.project_items }>
                <a class="c-projectList__item" href="{ project_link }">
                    <div class="u-projectList__item-wrapper">
                        <div class="c-previewCover { project_cover }"></div>
                        <div class="u-projectDetails-wrapper">
                            <p data-i18n="{ project_title }"></p>
                            <time data-i18n="{ project_date }"></time>
                            <ol>
                                <li each = { opts.project_tag }>
                                    <p data-i18n="{ tags }"></p>
                                </li>
                            </ol>
                        </div>
                    </div>
                </a>
            </li>
        </ol>
    </div>
</c-projectlist>