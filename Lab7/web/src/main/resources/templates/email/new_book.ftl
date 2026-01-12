<#include "layout/header.ftl">

<div style="font-family: 'Segoe UI', Arial, sans-serif; max-width: 600px; margin: 20px auto; padding: 20px; border: 1px solid #eee; border-radius: 12px; box-shadow: 0 4px 12px rgba(0,0,0,0.05);">

    <h3 style="color: #2c3e50; border-bottom: 2px solid #4CAF50; padding-bottom: 10px; margin-top: 0;">
        📚 Нова книга у каталозі
    </h3>

    <div style="margin: 20px 0;">
        <p style="font-size: 1.1em; margin: 8px 0;">
            <span style="color: #666;">Назва:</span> <strong style="color: #1a1a1a;">${title}</strong>
        </p>
        <p style="font-size: 1.1em; margin: 8px 0;">
            <span style="color: #666;">Автор:</span> <strong style="color: #1a1a1a;">${author}</strong>
        </p>

        <#assign yearClean = year?replace("[^0-9]", "", "r")>
        <#if (yearClean?number) < 2000>
            <div style="display: inline-block; background: #fff3cd; color: #856404; padding: 5px 12px; border-radius: 20px; font-size: 0.9em; font-weight: bold; margin-top: 10px; border: 1px solid #ffeeba;">
                ✨ Раритетне видання
            </div>
        </#if>
    </div>

    <#if comments?? && comments?size > 0>
        <div style="background: #f9f9f9; padding: 15px; border-radius: 8px; margin: 20px 0;">
            <p style="margin-top: 0; font-weight: bold; color: #555;">💬 Коментарі:</p>
            <ul style="list-style-type: none; padding: 0; margin: 0;">
                <#list comments as c>
                    <li style="padding: 8px 0; border-bottom: 1px solid #eee; font-style: italic; color: #444;">
                        "— ${c}"
                    </li>
                </#list>
            </ul>
        </div>
    </#if>

    <div style="margin: 25px 0;">
        <a href="http://localhost:8080/comments?bookId=${id?if_exists}"
           style="background: #4CAF50; color: white; padding: 12px 25px; text-decoration: none; border-radius: 6px; font-weight: bold; display: inline-block; transition: background 0.3s;">
            Відкрити сторінку книги
        </a>
    </div>

    <hr style="border: 0; border-top: 1px solid #eee; margin: 20px 0;">

    <p style="color: #999; font-size: 0.85em; margin-bottom: 0;">
        📅 Додано: ${createdAt?string("dd MMMM yyyy, HH:mm")}
    </p>
</div>

<#include "layout/footer.ftl">