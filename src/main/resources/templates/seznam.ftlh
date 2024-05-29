[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>

<div class="seznam">
    [#list vizitky as vizitka]
        <a href="/detail/${vizitka_index}">
            <div class="vizitka">
                <div class="jmeno">${vizitka.jmeno}</div>
                <div class="firma">${vizitka.firma}</div>
                <div class="udaje">
                    <div class="adresa">
                        <div>${vizitka.ulice}</div>
                        <div><span>${vizitka.obecPsc}</span></div>
                    </div>
                    <div class="kontakty">
                        [#if vizitka.email ??]
                            <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                        [#else]
                            <div><i class="las la-at"></i> <span>e-mail není dostupný</span></div>
                        [/#if]

                            <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon!"tel. není dostupný"}</span></div>




                        <div><i class="las la-globe"></i> <span>${vizitka.web!"web není dostupný"}</span></div>

                    </div>
                <form method="post" action="/delete">
                    <input type="hidden" name="id" value="${vizitka_index}" />
                    <button type="submit" class="btn btn-danger">Smazat</button>
                </form>
                </div>
            </div>
        </a>
    [/#list]
</div>

<div class="vytvorit">
    <form class="row g-3" method="post" action="/nova">

         <div class="col-md-3">
            <label for="given-name" class="form-label">Name</label>
            <input id="given-name" name="jmeno" class="form-control" type="text" />
         </div>

         <div class="col-md-3">
            <label for="given-name" class="form-label">Company</label>
            <input id="given-name" name="firma" class="form-control" type="text" />
         </div>

         <div class="col-md-3">
            <label for="given-name" class="form-label">Street</label>
            <input id="given-name" name="ulice" class="form-control" type="text" />
         </div>

         <div class="col-md-3">
            <label for="given-name" class="form-label">Zip Code</label>
            <input id="given-name" name="obecPsc" class="form-control" type="text" />
         </div>

         <div class="col-md-3">
            <label for="given-name" class="form-label">Email</label>
            <input id="given-name" name="email" class="form-control" type="text" />
         </div>

         <div class="col-md-3">
            <label for="given-name" class="form-label">Phone</label>
            <input id="given-name" name="telefon" class="form-control" type="text" />
         </div>

         <div class="col-md-3">
            <label for="given-name" class="form-label">Web</label>
            <input id="given-name" name="web" class="form-control" type="text" />
         </div>

         <div class="col-md-1 align-self-end">
            <button type="submit" class="btn btn-primary"><i class="bi bi-person-check-fill" role="img" aria-label="Edit"></i></button>
         </div>
    </form>
</div>

</body>
</html>
