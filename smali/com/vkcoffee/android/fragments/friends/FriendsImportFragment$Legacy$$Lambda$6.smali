.class final synthetic Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

.field private final arg$2:Lcom/facebook/AccessToken;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;Lcom/facebook/AccessToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;->arg$2:Lcom/facebook/AccessToken;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest$GraphJSONArrayCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;Lcom/facebook/AccessToken;)V

    return-object v0
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$$Lambda$6;->arg$2:Lcom/facebook/AccessToken;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->lambda$importFacebook$364(Lcom/facebook/AccessToken;Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V

    return-void
.end method
