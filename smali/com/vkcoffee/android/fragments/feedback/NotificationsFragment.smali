.class public Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;,
        Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/models/Notification;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

.field private foundDividers:Z

.field private from:Ljava/lang/String;

.field private langInfo:[[[Ljava/lang/String;

.field private mNotificationAction:Lcom/vkcoffee/android/functions/VoidF1Int;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1Int",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAction:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 69
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    .line 73
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lcom/vkcoffee/android/functions/VoidF1Int;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->mNotificationAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)[[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->langInfo:[[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->foundDividers:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Lcom/vkcoffee/android/api/models/Notification;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->attachExpandListeners(Lcom/vkcoffee/android/api/models/Notification;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->refresh()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->adapter:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lcom/vkcoffee/android/functions/VoidF1Int;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->mNotificationAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    return-object v0
.end method

.method private attachExpandListeners(Lcom/vkcoffee/android/api/models/Notification;)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    const/4 v5, 0x0

    .line 284
    iget-object v2, p1, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    instance-of v2, v2, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    if-eqz v2, :cond_0

    .line 285
    iget-object v1, p1, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    check-cast v1, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    .line 286
    .local v1, "text":Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;
    iget-object v2, v1, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, v1, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    iget-object v3, v1, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lcom/vkcoffee/android/ExpandTextSpan;

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/ExpandTextSpan;

    .line 288
    .local v0, "spans":[Lcom/vkcoffee/android/ExpandTextSpan;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 289
    aget-object v2, v0, v5

    new-instance v3, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;-><init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Lcom/vkcoffee/android/api/models/Notification;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ExpandTextSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .end local v0    # "spans":[Lcom/vkcoffee/android/ExpandTextSpan;
    .end local v1    # "text":Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;
    :cond_0
    return-void
.end method

.method static synthetic lambda$showFilterDialog$346([ZLandroid/content/DialogInterface;IZ)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 322
    aput-boolean p3, p0, p2

    .line 323
    return-void
.end method

.method private showFilterDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const v6, 0x7f0805a6

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    const v6, 0x7f0802a4

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    const v6, 0x7f0800ee

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    const v6, 0x7f08028f

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v12

    const v6, 0x7f080449

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v13

    const/4 v6, 0x5

    const v7, 0x7f080189

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 311
    .local v3, "opts":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "notifications_filter"

    const-string/jumbo v8, "wall,mentions,comments,likes,reposts,followers|friends"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "_setting":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v4, "setting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 314
    const/4 v6, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v6, "wall"

    aput-object v6, v2, v9

    const-string/jumbo v6, "mentions"

    aput-object v6, v2, v10

    const-string/jumbo v6, "comments"

    aput-object v6, v2, v11

    const-string/jumbo v6, "likes"

    aput-object v6, v2, v12

    const-string/jumbo v6, "reposts"

    aput-object v6, v2, v13

    const/4 v6, 0x5

    const-string/jumbo v7, "followers|friends"

    aput-object v7, v2, v6

    .line 315
    .local v2, "keys":[Ljava/lang/String;
    array-length v6, v2

    new-array v5, v6, [Z

    .line 316
    .local v5, "values":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 317
    aget-object v6, v2, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v5, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    new-instance v6, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080184

    .line 320
    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$4;->lambdaFactory$([Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v7

    .line 321
    invoke-virtual {v6, v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f08031e

    invoke-static {p0, v5, v2}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;[Z[Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    .line 324
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0800b7

    const/4 v8, 0x0

    .line 336
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 337
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    .end local v0    # "_setting":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "opts":[Ljava/lang/String;
    .end local v4    # "setting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "values":[Z
    :cond_1
    return-void
.end method


# virtual methods
.method protected convertItemsIndexToReal(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 358
    return p1
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;-><init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->adapter:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    .line 299
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->adapter:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;->setHasStableIds(Z)V

    .line 300
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->adapter:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNotifications()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->refreshing:Z

    if-nez v3, :cond_1

    move v0, v1

    .line 159
    .local v0, "fromCache":Z
    :goto_0
    new-instance v4, Lcom/vkcoffee/android/api/notifications/NotificationsGet;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->refreshing:Z

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, ""

    :goto_1
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->refreshing:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->foundDividers:Z

    if-eqz v5, :cond_3

    :goto_2
    invoke-direct {v4, v3, p2, v0, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;-><init>(Ljava/lang/String;IZZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;

    invoke-direct {v1, p0, p0, v0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Landroid/app/Fragment;Z)V

    .line 160
    invoke-virtual {v4, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 191
    return-void

    .end local v0    # "fromCache":Z
    :cond_1
    move v0, v2

    .line 158
    goto :goto_0

    .line 159
    .restart local v0    # "fromCache":Z
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->from:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$343(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 70
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method synthetic lambda$new$344(Lcom/vkcoffee/android/api/models/Notification;I)V
    .locals 7
    .param p1, "notification"    # Lcom/vkcoffee/android/api/models/Notification;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x4

    .line 74
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    sget-object v4, Lcom/vkcoffee/android/api/models/Notification$Type;->Grouped:Lcom/vkcoffee/android/api/models/Notification$Type;

    if-ne v3, v4, :cond_0

    .line 75
    iget-object v1, p1, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    .line 76
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 78
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->adapter:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 113
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p1, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 89
    .local v2, "parent":Lcom/vkcoffee/android/NewsEntry;
    if-nez v2, :cond_1

    .line 90
    new-instance v4, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v4, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :cond_1
    iget v3, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 92
    new-instance v3, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;

    sget-object v4, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->feed:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v6, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-direct {v3, v4, v5, v6}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;II)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 93
    :cond_2
    iget v3, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v3, v5, :cond_3

    .line 94
    new-instance v3, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    iget v4, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v5, v5

    iget-object v6, v2, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    iget v4, v2, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    rem-int/lit8 v5, v5, 0x14

    sub-int/2addr v4, v5

    .line 95
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setOffset(I)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v3, v5, :cond_4

    .line 97
    new-instance v3, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    iget-object v4, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v5, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v5, v5

    iget-object v6, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    iget-object v4, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iget-object v5, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    rem-int/lit8 v5, v5, 0x14

    sub-int/2addr v4, v5

    .line 99
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setOffset(I)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 102
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "entry"

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v3, v3, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v4, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    if-ne v3, v4, :cond_5

    .line 106
    const-string/jumbo v3, "comment"

    iget-object v4, p1, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_5
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v3, v3, Lcom/vkcoffee/android/api/models/Notification$Type;->feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v4, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    if-ne v3, v4, :cond_6

    .line 109
    const-string/jumbo v3, "comment"

    iget v4, p1, Lcom/vkcoffee/android/api/models/Notification;->commentID:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    :cond_6
    const-class v3, Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 103
    :cond_7
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    goto :goto_1
.end method

.method synthetic lambda$onViewCreated$345(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 229
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v5

    .line 230
    .local v5, "rawHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v6, v5, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;

    if-nez v6, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    :cond_0
    return-void

    :cond_1
    move-object v0, v5

    .line 234
    check-cast v0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;

    .line 235
    .local v0, "currentHolder":Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p2, Landroid/graphics/Rect;->left:I

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "foundFirst":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 240
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v3

    .line 241
    .local v3, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v6, v3, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;

    if-eqz v6, :cond_3

    move-object v2, v3

    .line 242
    check-cast v2, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;

    .line 243
    .local v2, "h":Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;
    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->getItem()Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->getItem()Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    move-result-object v7

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v6, v7, :cond_3

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->getItem()Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->getItem()Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    move-result-object v7

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v6, v7, :cond_3

    .line 244
    if-nez v1, :cond_2

    .line 245
    const/4 v1, 0x1

    .line 246
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p2, Landroid/graphics/Rect;->top:I

    .line 248
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 239
    .end local v2    # "h":Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method synthetic lambda$showFilterDialog$347([Z[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "sett":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 328
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    .line 329
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "notifications_filter"

    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->reload()V

    .line 335
    .end local v0    # "i":I
    .end local v1    # "sett":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 196
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->loadData()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->setEmptyText(I)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->setHasOptionsMenu(Z)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->setRefreshEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "like_notifications"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [[[Ljava/lang/String;

    new-array v1, v7, [[Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 136
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [[Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [[Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 145
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 146
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [[Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->langInfo:[[[Ljava/lang/String;

    .line 154
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/high16 v8, 0x41100000    # 9.0f

    const/4 v5, 0x0

    .line 262
    iget v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->scrW:I

    const/16 v7, 0x39c

    if-lt v6, v7, :cond_0

    move v1, v4

    .line 264
    .local v1, "isTabletDecorator":Z
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v6

    if-nez v1, :cond_1

    :goto_1
    invoke-direct {v0, v6, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 266
    .local v0, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget v4, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->scrW:I

    const/16 v6, 0x258

    if-lt v4, v6, :cond_2

    .line 267
    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 276
    .local v3, "paddingTop":I
    :goto_2
    if-eqz v1, :cond_4

    const/16 v4, 0x10

    iget v6, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->scrW:I

    add-int/lit16 v6, v6, -0x39c

    div-int/lit8 v6, v6, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->getShadowSize()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int v2, v4, v6

    .line 277
    .local v2, "margin":I
    :goto_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4, v2, v3, v2, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 278
    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 279
    return-object v0

    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v1    # "isTabletDecorator":Z
    .end local v2    # "margin":I
    .end local v3    # "paddingTop":I
    :cond_0
    move v1, v5

    .line 262
    goto :goto_0

    .restart local v1    # "isTabletDecorator":Z
    :cond_1
    move v4, v5

    .line 264
    goto :goto_1

    .line 268
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_2
    iget v4, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->scrW:I

    const/16 v6, 0x1e0

    if-lt v4, v6, :cond_3

    .line 269
    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .restart local v3    # "paddingTop":I
    goto :goto_2

    .line 271
    .end local v3    # "paddingTop":I
    :cond_3
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .restart local v3    # "paddingTop":I
    goto :goto_2

    :cond_4
    move v2, v5

    .line 276
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 205
    const v0, 0x7f100456

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    const v0, 0x7f11000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100456

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->showFilterDialog()V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 221
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 222
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x26000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->isTablet:Z

    if-eqz v3, :cond_0

    move-object v3, v5

    :goto_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->isTablet:Z

    if-eqz v4, :cond_1

    move v4, v6

    .line 223
    :goto_1
    invoke-direct/range {v0 .. v6}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)V

    .line 224
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    move-result-object v0

    .line 222
    invoke-virtual {v7, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setDrawSelectorOnTop(Z)V

    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelectorBoundsProvider(Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;)V

    .line 253
    return-void

    .line 222
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41100000    # 9.0f

    .line 223
    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    goto :goto_1
.end method
