.class public Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "DialogHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/DialogEntry;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;"
    }
.end annotation


# instance fields
.field private dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private lastEntry:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dialogsFragment"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 28
    new-instance v0, Lcom/vkcoffee/android/ui/DialogEntryView;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/DialogEntryView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 29
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 30
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->lastEntry:Lcom/vkcoffee/android/DialogEntry;

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vkcoffee/android/ui/DialogEntryView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/DialogEntryView;->setData(Lcom/vkcoffee/android/DialogEntry;)V

    .line 35
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->bind(Lcom/vkcoffee/android/DialogEntry;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vkcoffee/android/ui/DialogEntryView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/ui/DialogEntryView;->setImages(Landroid/graphics/Bitmap;I)V

    .line 43
    return-void
.end method

.method lambda$onLongClick$467(Lcom/vkcoffee/android/DialogEntry;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogEntry"    # Lcom/vkcoffee/android/DialogEntry;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 87
    if-nez p3, :cond_0

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->confirmAndClearHistory(Lcom/vkcoffee/android/DialogEntry;)V

    .line 90
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->createShortcut(Lcom/vkcoffee/android/DialogEntry;)V

    .line 93
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->crazy(I)V

    .line 96
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->readDialog(Lcom/vkcoffee/android/DialogEntry;)V

    .line 99
    :cond_3
    return-void
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->lastEntry:Lcom/vkcoffee/android/DialogEntry;

    .line 48
    .local v1, "lastEntry":Lcom/vkcoffee/android/DialogEntry;
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "showCrazy"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->lastEntry:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->crazy(I)V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    invoke-interface {v2, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;->onItemSelected(Lcom/vkcoffee/android/DialogEntry;)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget-object v3, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v4, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v3, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v0

    .line 58
    .local v0, "builder":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v2, v2, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setMessageId(I)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onLongClick()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->dialogsFragment:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 73
    :goto_0
    return v1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->lastEntry:Lcom/vkcoffee/android/DialogEntry;

    .line 70
    .local v0, "lastEntry":Lcom/vkcoffee/android/DialogEntry;
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const v5, 0x7f0800db

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 72
    const v2, 0x7f0800c0

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x2

    const-string v5, "Crazy Typing"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "\u041f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0434\u0438\u0430\u043b\u043e\u0433"

    aput-object v5, v4, v2

    invoke-static {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder$DialogHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;Lcom/vkcoffee/android/DialogEntry;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 70
    invoke-virtual {v3, v4, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/DialogHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vkcoffee/android/ui/DialogEntryView;

    invoke-virtual {v0, p2, p1}, Lcom/vkcoffee/android/ui/DialogEntryView;->setImages(Landroid/graphics/Bitmap;I)V

    .line 39
    return-void
.end method
