.class public Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "AddUserToChatHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private addUserToChatI:Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f03001b

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;->addUserToChatI:Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;

    .line 25
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;->addUserToChatI:Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;->addUserToChatI:Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;->addUserToChat()V

    .line 32
    :cond_0
    return-void
.end method
