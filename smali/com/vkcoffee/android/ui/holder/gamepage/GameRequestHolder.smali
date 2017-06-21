.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;
.super Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;
.source "GameRequestHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drawable"    # Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drawable"    # Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    .param p4, "layoutRes"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInviteHolder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;I)V

    .line 26
    return-void
.end method

.method public static openGame(Lcom/vkcoffee/android/data/GameRequest;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "request"    # Lcom/vkcoffee/android/data/GameRequest;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visitSource"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "key"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "request"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    iget v3, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    const-string/jumbo v5, "request"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->visitSource:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->openGame(Lcom/vkcoffee/android/data/GameRequest;Landroid/app/Activity;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Games;->hideRequest(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V

    .line 32
    return-void
.end method

.method protected onPlayButtonClick()V
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->currentRequest:Lcom/vkcoffee/android/data/GameRequest;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->visitSource:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameRequestHolder;->openGame(Lcom/vkcoffee/android/data/GameRequest;Landroid/app/Activity;Ljava/lang/String;)V

    .line 37
    return-void
.end method
