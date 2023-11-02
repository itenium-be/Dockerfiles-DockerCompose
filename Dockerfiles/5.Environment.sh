echo "ENVIRONMENT VARIABLES"
echo "Set with docker run --env PORT=3000 -e DB=mysql"
echo "PORT=$PORT"
echo "DB=$DB"
echo ""

echo "BUILD VARIABLES"
echo "PASSWORD is only a build arg:"
echo "PASSWORD=$PASSWORD"
echo ""

echo "DB_PWD is a build arg but then mapped with ENV:"
echo "DB_PWD=$DB_PWD"
echo ""

echo "docker build --build-arg environment=DEV"
echo "and then exposed with ARG + ENV"
echo "environment=$environment"
echo ""

echo "5.env file:"
echo "VERSION=$VERSION"
