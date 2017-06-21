.class public Lcom/vkcoffee/android/GlobalVarsCoffee;
.super Ljava/lang/Object;
.source "GlobalVarsCoffee.java"


# static fields
.field public static final ACCOUNT_SET_OFFLINE:Ljava/lang/String; = "account.setOffline"

.field public static final ACCOUNT_SET_ONLINE:Ljava/lang/String; = "account.setOnline"

.field public static final APIDOG_USER_REG:Ljava/lang/String;

.field public static final APIDOG_VLAD_API:Ljava/lang/String;

.field public static final API_HOST:Ljava/lang/String;

.field public static final APPS_GET:Ljava/lang/String; = "apps.get"

.field public static final COFFEE_REPOSITORY:Ljava/lang/String;

.field public static final FRIENDS_GETREQUEST:Ljava/lang/String; = "friends.getRequests"

.field public static final HOST:Ljava/lang/String;

.field public static final USERS_GET:Ljava/lang/String; = "users.get"

.field public static final VERSION_API:Ljava/lang/String; = "5.29"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4
    const-string v0, "t8rBRGzIMlx1eB/yOLldaw=="

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalVarsCoffee;->HOST:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gc5saZvks6DAl1mt7MwlsA=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vkcoffee/android/GlobalVarsCoffee;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jHIh6C8jV/BFeMK9tNf3OfylEk2KdqU9SVDl8RglL3fqfFYGfr5VO7dMJpW5a7Rh"

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalVarsCoffee;->COFFEE_REPOSITORY:Ljava/lang/String;

    .line 6
    const-string v0, "/4AARbm6cf4rQ1i+QDpyx5HrrIj6hxepHuF0MWlgOHA="

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    .line 18
    const-string v0, "BBuV7uZEveY8IpP38F0Bp3UXCSawwsbtZOjloenaja4="

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalVarsCoffee;->APIDOG_VLAD_API:Ljava/lang/String;

    .line 19
    const-string v0, "4dCgy/TMZu1NE17Yq/ofjpJbAPN8gOrNIRvEGNRkbZI="

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalVarsCoffee;->APIDOG_USER_REG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "http://www.bugsense.com/api/acra?api_key=c961b23a"

    return-object v0
.end method
