.class public Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder$AddUserToChatI;"
    }
.end annotation


# static fields
.field private static final INVITE_RESULT:I = 0x9808

.field private static final PHOTO_RESULT:I = 0x9807


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

.field private admin:I

.field private final chatDnd:Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

.field private final chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

.field private create:Z

.field private id:I

.field private left:Z

.field private final notificationRef:Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private uploadID:I

.field private uploadProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 204
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 77
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    const v1, 0x7f1003c9

    const v2, 0x7f0800c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;-><init>(Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatDnd:Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    .line 78
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    .line 79
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;

    const v1, 0x7f0800d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->notificationRef:Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;

    .line 81
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->left:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadID:I

    .line 89
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->admin:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->left:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->left:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->loadOnlines()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateChatUsers()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadID:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->notificationRef:Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatDnd:Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    return-object v0
.end method

.method private addUserToChat(Lcom/vkcoffee/android/UserProfile;I)V
    .locals 3
    .param p1, "p"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "uid"    # I

    .prologue
    .line 429
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    if-nez p1, :cond_0

    .end local p2    # "uid":I
    :goto_0
    invoke-direct {v0, v1, p2}, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 462
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 463
    return-void

    .line 429
    .restart local p2    # "uid":I
    :cond_0
    iget p2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    goto :goto_0
.end method

.method private createChat()V
    .locals 8

    .prologue
    .line 304
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "originTitle":Ljava/lang/String;
    move-object v3, v2

    .line 306
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 309
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/ChatUser;

    iget-object v6, v6, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const-string/jumbo v6, ", "

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .end local v1    # "i":I
    .end local v4    # "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ChatUser;

    .line 315
    .local v0, "cu":Lcom/vkcoffee/android/ChatUser;
    iget-object v7, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    .end local v0    # "cu":Lcom/vkcoffee/android/ChatUser;
    :cond_2
    new-instance v6, Lcom/vkcoffee/android/api/messages/MessagesCreateChat;

    invoke-direct {v6, v5, v3}, Lcom/vkcoffee/android/api/messages/MessagesCreateChat;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v7, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;

    invoke-direct {v7, p0, p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/messages/MessagesCreateChat;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    .line 337
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 338
    return-void
.end method

.method private getDndText(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 347
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v0

    .line 348
    .local v0, "now":I
    if-le p1, v0, :cond_1

    .line 349
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 351
    :goto_0
    return-object v1

    .line 349
    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 351
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$onActivityResult$441(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .prologue
    .line 476
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    .line 477
    return-void
.end method

.method private loadOnlines()V
    .locals 5

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "needOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ChatUser;

    .line 275
    .local v1, "user":Lcom/vkcoffee/android/ChatUser;
    iget-object v3, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->isFriend(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    iget-object v3, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    iget-object v3, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->getOnlineStatus(I)I

    move-result v4

    iput v4, v3, Lcom/vkcoffee/android/UserProfile;->online:I

    goto :goto_0

    .line 281
    .end local v1    # "user":Lcom/vkcoffee/android/ChatUser;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateList()V

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 294
    :goto_1
    return-void

    .line 285
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/api/users/GetOnlines;

    invoke-direct {v2, v0}, Lcom/vkcoffee/android/api/users/GetOnlines;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/users/GetOnlines;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 293
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1
.end method

.method private setChatTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesEditChat;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/api/messages/MessagesEditChat;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$5;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$5;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesEditChat;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method private setDnd(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x77359400

    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 368
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateServerSettings()V

    .line 369
    return-void
.end method

.method private setMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const v4, 0x77359400

    .line 356
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateServerSettings()V

    .line 363
    return-void

    .line 360
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private showDndDialog()V
    .locals 8

    .prologue
    const v7, 0x7f0800c4

    const/4 v6, 0x0

    .line 383
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "notify"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 384
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x77359400

    iget v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, "dnd":I
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v1

    .line 386
    .local v1, "now":I
    if-le v0, v1, :cond_0

    .line 387
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08012d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    .line 388
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0802d7

    const/4 v5, 0x0

    .line 391
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 414
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0006

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 412
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private updateChatUsers()V
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    .line 248
    return-void
.end method

.method private updateServerSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x77359400

    const/4 v6, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "notify"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 373
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 374
    .local v1, "mute":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "dnd":I
    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    .line 376
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v4

    sub-int/2addr v0, v4

    .line 378
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;

    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v4, v7

    invoke-direct {v3, v4, v0, v1}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;-><init>(IIZ)V

    .line 379
    .local v3, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    check-cast v3, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;

    .end local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;->setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 380
    return-void
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const v5, 0x77359400

    const/4 v2, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v3, "notify"

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->notificationRef:Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mute"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->setChecked(Z)V

    .line 343
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatDnd:Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getDndText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->setSummary(Ljava/lang/Object;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    .line 344
    return-void

    :cond_0
    move v1, v2

    .line 342
    goto :goto_0
.end method


# virtual methods
.method public addUserToChat()V
    .locals 4

    .prologue
    .line 503
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 504
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ChatUser;

    iget-object v2, v2, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    aput v2, v1, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$Builder;

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$Builder;-><init>([I)V

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v2

    const v3, 0x9808

    invoke-virtual {v2, p0, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 508
    return-void
.end method

.method protected doLoadData()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateChatUsers()V

    .line 216
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 209
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getAdapter()Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    return-object v0
.end method

.method public getPeerID()I
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    const v1, 0x77359400

    add-int/2addr v0, v1

    return v0
.end method

.method synthetic lambda$onActivityResult$442(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 478
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadID:I

    invoke-static {v0}, Lcom/vkcoffee/android/upload/Upload;->cancel(I)V

    return-void
.end method

.method synthetic lambda$onAttach$437(Landroid/app/Activity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "actionId"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->createChat()V

    .line 166
    :goto_0
    return v3

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setChatTitle(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 164
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method synthetic lambda$onClick$443(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/Integer;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->removeChatUser(I)V

    return-void
.end method

.method synthetic lambda$showDndDialog$439(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setDnd(I)V

    .line 390
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateSettings()V

    .line 391
    return-void
.end method

.method synthetic lambda$showDndDialog$440(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "t":I
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v0

    .line 396
    .local v0, "now1":I
    packed-switch p2, :pswitch_data_0

    .line 410
    :goto_0
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setDnd(I)V

    .line 411
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateSettings()V

    .line 412
    return-void

    .line 398
    :pswitch_0
    add-int/lit16 v1, v0, 0xe10

    .line 399
    goto :goto_0

    .line 401
    :pswitch_1
    const v2, 0x15180

    add-int v1, v0, v2

    .line 402
    goto :goto_0

    .line 404
    :pswitch_2
    const v2, 0x93a80

    add-int v1, v0, v2

    .line 405
    goto :goto_0

    .line 407
    :pswitch_3
    const v1, 0x7fffffff

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic lambda$updateChatUsers$438(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "users"    # Ljava/util/ArrayList;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    if-eqz p3, :cond_0

    const-string/jumbo v1, "vkchatphoto:"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "photo":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p3}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->setPhoto(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 247
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public leave()V
    .locals 4

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->removeUserFromChat(Landroid/content/Context;IILcom/vkcoffee/android/functions/VoidF1;)V

    .line 534
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v6, 0x9807

    const/4 v5, 0x1

    .line 466
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 467
    const v1, 0x9808

    if-ne p1, v1, :cond_0

    .line 468
    const-string/jumbo v1, "user"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->addUserToChat(Lcom/vkcoffee/android/UserProfile;I)V

    .line 470
    :cond_0
    if-ne p1, v6, :cond_1

    .line 471
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    .line 472
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 473
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const v2, 0x7f08056e

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 475
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const/4 v2, -0x3

    const v3, 0x7f0800b7

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$5;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 479
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 480
    new-instance v0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 481
    .local v0, "task":Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;
    invoke-virtual {v0}, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->getID()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->uploadID:I

    .line 482
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 485
    .end local v0    # "task":Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;
    :cond_1
    if-ne p2, v5, :cond_2

    if-ne p1, v6, :cond_2

    .line 486
    new-instance v1, Lcom/vkcoffee/android/api/messages/MessagesDeleteChatPhoto;

    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/messages/MessagesDeleteChatPhoto;-><init>(I)V

    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$7;

    .line 487
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$7;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/messages/MessagesDeleteChatPhoto;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 492
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 494
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 148
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "create"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "admin"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->admin:I

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 154
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->loadData()V

    .line 156
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/Activity;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 169
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-eqz v5, :cond_0

    const v5, 0x7f080110

    :goto_0
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setTitle(I)V

    .line 170
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "users"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 172
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 173
    .local v1, "cur":Lcom/vkcoffee/android/UserProfile;
    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    iput v5, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 174
    invoke-virtual {p1, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "username"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "userphoto"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 176
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 177
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v0, Lcom/vkcoffee/android/ChatUser;

    invoke-direct {v0}, Lcom/vkcoffee/android/ChatUser;-><init>()V

    .line 178
    .local v0, "cu":Lcom/vkcoffee/android/ChatUser;
    iput-object v3, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    .line 179
    iput-object v1, v0, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    .line 180
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->addChatUser(Lcom/vkcoffee/android/ChatUser;)V

    goto :goto_1

    .line 169
    .end local v0    # "cu":Lcom/vkcoffee/android/ChatUser;
    .end local v1    # "cur":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_0
    const v5, 0x7f0800fe

    goto :goto_0

    .line 182
    .restart local v1    # "cur":Lcom/vkcoffee/android/UserProfile;
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateList()V

    .line 183
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->loadOnlines()V

    .line 184
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setHasOptionsMenu(Z)V

    .line 189
    .end local v1    # "cur":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateSettings()V

    .line 191
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-virtual {v5, p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-nez v5, :cond_2

    .line 194
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v5, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v5, "com.vkcoffee.android.UPLOAD_PROGRESS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v5, "com.vkcoffee.android.UPLOAD_FAILED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v7, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_2
    return-void

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateChatUsers()V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 498
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setMute(Z)V

    .line 499
    return-void

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 514
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "allow_album"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "limit"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 515
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->chatInfoData:Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->hasChatPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const-string/jumbo v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 520
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "no_thumbs"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 521
    const v2, 0x9807

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 524
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->showDndDialog()V

    goto :goto_0

    .line 527
    :sswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->id:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->removeUserFromChat(Landroid/content/Context;IILcom/vkcoffee/android/functions/VoidF1;)V

    goto :goto_0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1001bb -> :sswitch_0
        0x7f10039f -> :sswitch_2
        0x7f1003c9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v1, 0x7f0200a5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 542
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 543
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    if-ne v0, v3, :cond_0

    .line 544
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->isTablet:Z

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateDecorator()V

    .line 551
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->setIsCreate(Z)V

    .line 254
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 257
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 258
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 259
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroy()V

    .line 220
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-nez v0, :cond_0

    .line 222
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 265
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->createChat()V

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x7f100447
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setRefreshEnabled(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->create:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public returnToChat()V
    .locals 2

    .prologue
    .line 537
    const/4 v0, 0x0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->addUserToChat(Lcom/vkcoffee/android/UserProfile;I)V

    .line 538
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->adapter:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->build()V

    .line 298
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 301
    :cond_0
    return-void
.end method
