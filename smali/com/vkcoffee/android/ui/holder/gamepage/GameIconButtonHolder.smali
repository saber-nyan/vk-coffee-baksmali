.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameIconButtonHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/GameCardFragment;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# static fields
.field static handler:Landroid/os/Handler;

.field private static pendingRequest:Ljava/lang/Runnable;


# instance fields
.field private final aSwitch:Landroid/widget/Switch;

.field private fr:Lcom/vkcoffee/android/fragments/GameCardFragment;

.field private lastApp:Lcom/vkcoffee/android/data/ApiApplication;

.field private final showSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "showSwitch"    # Z

    .prologue
    .line 35
    const v1, 0x7f03002b

    invoke-direct {p0, v1, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 36
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->showSwitch:Z

    .line 37
    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz p2, :cond_1

    const v1, 0x7f0804b0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v1, 0x7f100126

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->aSwitch:Landroid/widget/Switch;

    .line 40
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->aSwitch:Landroid/widget/Switch;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->aSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    :cond_0
    return-void

    .line 38
    :cond_1
    const v1, 0x7f0801c5

    goto :goto_0

    .line 40
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public static inviteToGame(Landroid/app/Fragment;I)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "appId"    # I

    .prologue
    .line 91
    new-instance v0, Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment$Builder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment$Builder;->setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const v1, 0x7f080469

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    const/16 v1, 0xf3f

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 93
    return-void
.end method

.method private updateNotificationsStateDelayed(Z)V
    .locals 4
    .param p1, "switchState"    # Z

    .prologue
    .line 62
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->pendingRequest:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->pendingRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;Z)Ljava/lang/Runnable;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->pendingRequest:Ljava/lang/Runnable;

    .line 78
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->pendingRequest:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 2
    .param p1, "data"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->fr:Lcom/vkcoffee/android/fragments/GameCardFragment;

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->fr:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lastApp:Lcom/vkcoffee/android/data/ApiApplication;

    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->showSwitch:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->aSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lastApp:Lcom/vkcoffee/android/data/ApiApplication;

    iget-boolean v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->bind(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    return-void
.end method

.method synthetic lambda$new$703(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->updateNotificationsStateDelayed(Z)V

    return-void
.end method

.method synthetic lambda$updateNotificationsStateDelayed$704(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    sput-object v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->pendingRequest:Ljava/lang/Runnable;

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lastApp:Lcom/vkcoffee/android/data/ApiApplication;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    if-ne p1, v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lastApp:Lcom/vkcoffee/android/data/ApiApplication;

    iget v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-direct {v2, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;-><init>(IZ)V

    new-instance v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$1;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$1;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->showSwitch:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->switchValue()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->fr:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->fr:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getApplication()Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->inviteToGame(Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public switchValue()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->showSwitch:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->aSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
