[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>

<body>
<div class="detail">
    <div class="vizitka">
        <div class="jmeno">${vizitka.jmeno}</div>
        <div class="firma">${vizitka.firma}</div>
        <div class="udaje">
            <div class="adresa">
                <div>${vizitka.ulice}</div>
                <div>${vizitka.obecPsc}</div>
            </div>
            <div class="kontakty">
                [#if vizitka.email?has_content]
                    <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                [/#if]
                [#if vizitka.telefon?has_content]
                    <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                [/#if]
                [#if vizitka.web?has_content]
                    <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                [/#if]
            </div>
        </div>
    </div>
    <div class="mapa">
        <iframe style="border:none; width: 100%; height: 100%" src="https://frame.mapy.cz/?q=${vizitka.getCelaAdresa()}" frameborder="0"></iframe>
    </div>

</div>
</body>
</html>