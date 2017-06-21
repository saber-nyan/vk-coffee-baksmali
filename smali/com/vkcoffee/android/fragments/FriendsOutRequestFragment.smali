.class public Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "FriendsOutRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;,
        Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;
    }
.end annotation


# instance fields
.field public content:Landroid/widget/FrameLayout;

.field public friends:[Ljava/lang/String;

.field public list:Landroid/widget/ListView;

.field public list2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list2:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->doRemoveFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->loadFriendsRequest(Ljava/lang/String;)V

    return-void
.end method

.method private doRemoveFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsDelete;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsDelete;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 134
    return-void
.end method

.method private loadFriendsRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 80
    .local v1, "var1":Lcom/loopj/android/http/RequestParams;
    const-string v2, "fields"

    const-string v3, "photo_100, online, last_seen"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "user_ids"

    invoke-virtual {v1, v2, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "order"

    const-string v3, "hints"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "access_token"

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/users.get?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "users.get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    .line 124
    .local v0, "response":Lcom/loopj/android/http/RequestHandle;
    return-void
.end method

.method private loadUserRequest()V
    .locals 5

    .prologue
    .line 136
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 137
    .local v1, "var1":Lcom/loopj/android/http/RequestParams;
    const-string v2, "out"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "access_token"

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/friends.getRequests?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "friends.getRequests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$3;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    .line 164
    .local v0, "response":Lcom/loopj/android/http/RequestHandle;
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0a00f5

    const/4 v3, 0x0

    .line 68
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list:Landroid/widget/ListView;

    .line 69
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->content:Landroid/widget/FrameLayout;

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->content:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->content:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->loadUserRequest()V

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public scale(F)I
    .locals 2
    .param p1, "var0"    # F

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 167
    .local v0, "displayDensity":F
    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
