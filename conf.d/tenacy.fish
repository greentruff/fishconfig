
set BACKEND_PATH ~/dev/tenacy-python/backend

if test -d $BACKEND_PATH
    envsource $BACKEND_PATH/local.env
    set -gx ROOT_BACKEND_PROJECT $BACKEND_PATH/back
    set -gx FLASK_APP $BACKEND_PATH/back/src/run.py

    # brew install coreutils
    function tdb
        genv -C $ROOT_BACKEND_PROJECT/src poetry run flask db
    end
    function tpt
        genv -C $ROOT_BACKEND_PROJECT/src poetry run pytest
    end
    function tpo
        genv -C $ROOT_BACKEND_PROJECT/src poetry
    end
end