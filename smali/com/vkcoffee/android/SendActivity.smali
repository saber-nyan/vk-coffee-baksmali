.class public Lcom/vkcoffee/android/SendActivity;
.super Landroid/app/Activity;
.source "SendActivity.java"


# static fields
.field private static final FILTER_RESULT:I = 0x65

.field private static final MESSAGE_RESULT:I = 0x66

.field private static final PHOTO_ALBUM_RESULT:I = 0x67

.field private static final audioExtensions:[Ljava/lang/String;

.field private static final imageExtensions:[Ljava/lang/String;

.field private static final videoExtensions:[Ljava/lang/String;


# instance fields
.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private messageAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private messageText:Ljava/lang/String;

.field needFinish:Z

.field private recipient:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "jpg"

    aput-object v1, v0, v2

    const-string/jumbo v1, "jpeg"

    aput-object v1, v0, v3

    const-string/jumbo v1, "png"

    aput-object v1, v0, v4

    const-string/jumbo v1, "gif"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vkcoffee/android/SendActivity;->imageExtensions:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "mp3"

    aput-object v1, v0, v2

    sput-object v0, Lcom/vkcoffee/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "avi"

    aput-object v1, v0, v2

    const-string/jumbo v1, "mp4"

    aput-object v1, v0, v3

    const-string/jumbo v1, "3gp"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mpeg"

    aput-object v1, v0, v5

    const-string/jumbo v1, "mov"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "flv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "wmv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/SendActivity;->videoExtensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/SendActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/SendActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/SendActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->processIntent()V

    return-void
.end method

.method private copyFromRestrictedProvider()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.STREAM"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v9

    .line 505
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v10, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.STREAM"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 515
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 516
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "content"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 519
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 521
    .local v2, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_0

    .line 523
    iget-object v10, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 524
    const/4 v1, 0x1

    .line 528
    .local v1, "havePermission":Z
    :goto_1
    iget-boolean v10, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v10, :cond_3

    if-nez v1, :cond_0

    .line 529
    :cond_3
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 530
    .local v4, "progress":Landroid/app/ProgressDialog;
    new-instance v9, Lcom/vkcoffee/android/SendActivity$1;

    invoke-direct {v9, p0, v4}, Lcom/vkcoffee/android/SendActivity$1;-><init>(Lcom/vkcoffee/android/SendActivity;Landroid/app/ProgressDialog;)V

    invoke-static {v7, v9, p0}, Lcom/vkcoffee/android/upload/UploadUtils;->doCopyFromRestrictedProviderAsync(Ljava/util/ArrayList;Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;Landroid/content/Context;)V

    move v9, v8

    .line 560
    goto :goto_0

    .line 508
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "havePermission":Z
    .end local v2    # "info":Landroid/content/pm/ProviderInfo;
    .end local v4    # "progress":Landroid/app/ProgressDialog;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.STREAM"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 510
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 511
    .local v5, "u":Landroid/os/Parcelable;
    check-cast v5, Landroid/net/Uri;

    .end local v5    # "u":Landroid/os/Parcelable;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 526
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v2    # "info":Landroid/content/pm/ProviderInfo;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    move v1, v8

    .restart local v1    # "havePermission":Z
    :goto_3
    goto :goto_1

    .end local v1    # "havePermission":Z
    :cond_6
    move v1, v9

    goto :goto_3
.end method

.method private getTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 481
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "title"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 482
    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/SendActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 483
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 484
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 485
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 489
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 490
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    const/4 v1, 0x1

    .line 494
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return v1

    .line 489
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private notSupported()V
    .locals 2

    .prologue
    .line 498
    const v0, 0x7f0804dd

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    return-void
.end method

.method private openNewMessage(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/SendActivity;->recipient:Lcom/vkcoffee/android/UserProfile;

    if-nez v1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/vkcoffee/android/SendActivity;->messageText:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/vkcoffee/android/SendActivity;->messageAttachments:Ljava/util/List;

    .line 214
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->setSelectMode()Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, p0, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->forResult(Landroid/app/Activity;I)V

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity;->recipient:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, p0, Lcom/vkcoffee/android/SendActivity;->recipient:Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity;->recipient:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setText(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v0

    .line 218
    .local v0, "builder":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    if-eqz p2, :cond_1

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/vkcoffee/android/attachments/Attachment;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setAttachments([Landroid/os/Parcelable;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 221
    :cond_1
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openNewPost(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<+Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachAttachments([Lcom/vkcoffee/android/attachments/Attachment;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachText(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->send(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    .line 208
    return-void

    .line 200
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vkcoffee/android/attachments/Attachment;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/attachments/Attachment;

    goto :goto_0
.end method

.method private processIntent()V
    .locals 13

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 79
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->copyFromRestrictedProvider()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string/jumbo v10, "android.intent.extra.STREAM"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 87
    const/4 v7, 0x0

    .line 88
    .local v7, "stream":Landroid/net/Uri;
    const-string/jumbo v10, "android.intent.action.SEND"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 89
    const-string/jumbo v10, "android.intent.extra.STREAM"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "stream":Landroid/net/Uri;
    check-cast v7, Landroid/net/Uri;

    .line 91
    .restart local v7    # "stream":Landroid/net/Uri;
    if-nez v7, :cond_2

    .line 92
    const-string/jumbo v10, "vk"

    const-string/jumbo v11, "Stream URI is null, nothing to share, closing."

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 99
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ctype":Ljava/lang/String;
    const-string/jumbo v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Send Type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v0, :cond_3

    .line 102
    const-string/jumbo v10, "image/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 103
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendPhoto()V

    .line 104
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 194
    .end local v0    # "ctype":Ljava/lang/String;
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_3
    :goto_1
    iget-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    if-eqz v10, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    goto :goto_0

    .line 105
    .restart local v0    # "ctype":Ljava/lang/String;
    .restart local v7    # "stream":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v10, "audio/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 106
    const-string/jumbo v10, "vk"

    const-string/jumbo v11, "Sending as an audio file"

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendAudio()V

    goto :goto_1

    .line 108
    :cond_5
    const-string/jumbo v10, "video/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 109
    const-string/jumbo v10, "vk"

    const-string/jumbo v11, "Sending as a video"

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 111
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendVideo()V

    goto :goto_1

    .line 113
    :cond_6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 114
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendDocsDialog()V

    goto :goto_1

    .line 117
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_b

    const-string/jumbo v10, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "ctype":Ljava/lang/String;
    const-string/jumbo v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Send Type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v0, :cond_3

    .line 121
    const-string/jumbo v10, "image/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 122
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendPhoto()V

    .line 123
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    goto :goto_1

    .line 124
    :cond_8
    const-string/jumbo v10, "audio/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 125
    const-string/jumbo v10, "vk"

    const-string/jumbo v11, "Sending as an audio file"

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendAudio()V

    goto/16 :goto_1

    .line 127
    :cond_9
    const-string/jumbo v10, "video/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 128
    const-string/jumbo v10, "vk"

    const-string/jumbo v11, "Sending as a video"

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 130
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendVideo()V

    goto/16 :goto_1

    .line 132
    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 133
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendDocsDialog()V

    goto/16 :goto_1

    .line 136
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_10

    const-string/jumbo v10, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_10

    .line 137
    :cond_c
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "filename":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v10, "\\."

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "fparts":[Ljava/lang/String;
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "ext":Ljava/lang/String;
    sget-object v10, Lcom/vkcoffee/android/SendActivity;->imageExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v10}, Lcom/vkcoffee/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 145
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendPhoto()V

    .line 146
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    goto/16 :goto_1

    .line 147
    :cond_d
    sget-object v10, Lcom/vkcoffee/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v10}, Lcom/vkcoffee/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 148
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendAudio()V

    goto/16 :goto_1

    .line 149
    :cond_e
    sget-object v10, Lcom/vkcoffee/android/SendActivity;->videoExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v10}, Lcom/vkcoffee/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 150
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 151
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendVideo()V

    goto/16 :goto_1

    .line 153
    :cond_f
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendDocsDialog()V

    goto/16 :goto_1

    .line 158
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "fparts":[Ljava/lang/String;
    :cond_10
    const-string/jumbo v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "URI "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " has an unsupported scheme"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->notSupported()V

    goto/16 :goto_1

    .line 161
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_11
    const-string/jumbo v10, "android.intent.extra.TEXT"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 162
    const-string/jumbo v10, "android.intent.extra.TEXT"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "text":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "subject":Ljava/lang/String;
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/vkcoffee/android/SendActivity;->needFinish:Z

    .line 165
    invoke-static {v9}, Lcom/vkcoffee/android/LinkParser;->isLink(Ljava/lang/String;)Z

    move-result v5

    .line 167
    .local v5, "isLink":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "_internal"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 168
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0x7f0804dc

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const v11, 0x7f0804da

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const v11, 0x7f0804d1

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 172
    .local v6, "items":[Ljava/lang/String;
    :goto_2
    new-instance v11, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_13

    const v10, 0x7f08053a

    .line 173
    :goto_3
    invoke-virtual {v11, v10}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-static {p0, v5, v8, v9}, Lcom/vkcoffee/android/SendActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v11

    .line 174
    invoke-virtual {v10, v6, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v11

    .line 188
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 189
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 170
    .end local v6    # "items":[Ljava/lang/String;
    :cond_12
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0x7f0804dc

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const v11, 0x7f0804da

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .restart local v6    # "items":[Ljava/lang/String;
    goto :goto_2

    .line 172
    :cond_13
    const v10, 0x7f08053b

    goto :goto_3

    .line 191
    .end local v5    # "isLink":Z
    .end local v6    # "items":[Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    :cond_14
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->notSupported()V

    goto/16 :goto_1
.end method

.method private sendAudio()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 281
    new-instance v0, Lcom/vkcoffee/android/upload/AudioUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/upload/AudioUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    .local v0, "task":Lcom/vkcoffee/android/upload/AudioUploadTask;
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v5, "vkontakte://vk.com/audio"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/upload/AudioUploadTask;->setDoneNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 283
    invoke-static {p0, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 284
    return-void
.end method

.method private sendDocs()V
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v14, 0x0

    .line 322
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v11, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 328
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 329
    .local v9, "u":Landroid/os/Parcelable;
    check-cast v9, Landroid/net/Uri;

    .end local v9    # "u":Landroid/os/Parcelable;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 334
    .local v10, "uri":Landroid/net/Uri;
    new-instance v8, Lcom/vkcoffee/android/upload/DocumentUploadTask;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v8, p0, v3, v4, v14}, Lcom/vkcoffee/android/upload/DocumentUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 335
    .local v8, "task":Lcom/vkcoffee/android/upload/DocumentUploadTask;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    .end local v8    # "task":Lcom/vkcoffee/android/upload/DocumentUploadTask;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/upload/BatchUploadTask;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    const v1, 0x7f08056d

    :goto_2
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    const v1, 0x7f080131

    :goto_3
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_5

    const v1, 0x7f080132

    :goto_4
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vkontakte://vk.com/docs"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 340
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v1, v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v14, v1, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/upload/BatchUploadTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 341
    .local v0, "batch":Lcom/vkcoffee/android/upload/BatchUploadTask;
    invoke-static {p0, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 342
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    .line 343
    return-void

    .line 337
    .end local v0    # "batch":Lcom/vkcoffee/android/upload/BatchUploadTask;
    :cond_3
    const v1, 0x7f08056b

    goto :goto_2

    .line 338
    :cond_4
    const v1, 0x7f08012f

    goto :goto_3

    .line 339
    :cond_5
    const v1, 0x7f080130

    goto :goto_4
.end method

.method private sendDocsDialog()V
    .locals 4

    .prologue
    .line 346
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080537

    .line 347
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0804d9

    .line 348
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0804da

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 364
    return-void
.end method

.method private sendPhoto()V
    .locals 8

    .prologue
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v5, 0x7f0804d8

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const v5, 0x7f0804d9

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_1

    .line 230
    :cond_0
    const v5, 0x7f0804dc

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const v5, 0x7f0804da

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    const-string/jumbo v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 240
    .local v3, "u":Landroid/os/Parcelable;
    check-cast v3, Landroid/net/Uri;

    .end local v3    # "u":Landroid/os/Parcelable;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.TEXT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "text":Ljava/lang/String;
    new-instance v6, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    const v5, 0x7f080539

    :goto_1
    invoke-virtual {v6, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 246
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-static {p0, v4, v2}, Lcom/vkcoffee/android/SendActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v6

    .line 276
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 277
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    return-void

    .line 245
    :cond_4
    const v5, 0x7f080538

    goto :goto_1
.end method

.method private sendVideo()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, "vertical":Z
    const/4 v0, 0x0

    .line 290
    .local v0, "_duration":I
    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 291
    .local v3, "mdr":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v14, "android.intent.extra.STREAM"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    invoke-virtual {v3, p0, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 292
    const/16 v11, 0x12

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "sWidth":Ljava/lang/String;
    const/16 v11, 0x13

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "sHeight":Ljava/lang/String;
    const/16 v11, 0x18

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "sOrient":Ljava/lang/String;
    const/16 v11, 0x9

    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    div-int/lit16 v0, v11, 0x3e8

    .line 296
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 297
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 298
    .local v9, "width":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, "height":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, "orient":I
    if-ge v9, v2, :cond_1

    move v8, v12

    .line 301
    :goto_0
    rem-int/lit16 v11, v4, 0xb4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v14, 0x5a

    if-ne v11, v14, :cond_0

    .line 302
    if-nez v8, :cond_2

    move v8, v12

    .line 307
    .end local v2    # "height":I
    .end local v3    # "mdr":Landroid/media/MediaMetadataRetriever;
    .end local v4    # "orient":I
    .end local v5    # "sHeight":Ljava/lang/String;
    .end local v6    # "sOrient":Ljava/lang/String;
    .end local v7    # "sWidth":Ljava/lang/String;
    .end local v9    # "width":I
    :cond_0
    :goto_1
    move v1, v0

    .line 308
    .local v1, "duration":I
    if-nez v8, :cond_3

    .line 309
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/SendActivity;->showVideoOptions(I)V

    .line 319
    :goto_2
    return-void

    .end local v1    # "duration":I
    .restart local v2    # "height":I
    .restart local v3    # "mdr":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "orient":I
    .restart local v5    # "sHeight":Ljava/lang/String;
    .restart local v6    # "sOrient":Ljava/lang/String;
    .restart local v7    # "sWidth":Ljava/lang/String;
    .restart local v9    # "width":I
    :cond_1
    move v8, v13

    .line 300
    goto :goto_0

    :cond_2
    move v8, v13

    .line 302
    goto :goto_1

    .line 304
    .end local v2    # "height":I
    .end local v3    # "mdr":Landroid/media/MediaMetadataRetriever;
    .end local v4    # "orient":I
    .end local v5    # "sHeight":Ljava/lang/String;
    .end local v6    # "sOrient":Ljava/lang/String;
    .end local v7    # "sWidth":Ljava/lang/String;
    .end local v9    # "width":I
    :catch_0
    move-exception v10

    .line 305
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v11, "vk"

    const-string/jumbo v12, "Error getting video duration!"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 311
    .end local v10    # "x":Ljava/lang/Exception;
    .restart local v1    # "duration":I
    :cond_3
    new-instance v11, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0800f4

    .line 312
    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f080581

    .line 313
    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0805c0

    invoke-static {p0, v1}, Lcom/vkcoffee/android/SendActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v13

    .line 314
    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0802d7

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v13

    .line 315
    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v12

    .line 316
    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 317
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method private showOptionsList(I)V
    .locals 0
    .param p1, "contentType"    # I

    .prologue
    .line 477
    return-void
.end method

.method private showVideoDialog()V
    .locals 7

    .prologue
    .line 440
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 441
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/high16 v4, 0x40e00000    # 7.0f

    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 442
    .local v2, "padding":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 443
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 445
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 446
    .local v3, "titleEdit":Landroid/widget/EditText;
    const v4, 0x7f0804df

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 447
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/SendActivity;->getTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "descrEdit":Landroid/widget/EditText;
    const v4, 0x7f0804de

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 456
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0804e0

    .line 459
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 460
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08031e

    invoke-static {p0, v3, v0}, Lcom/vkcoffee/android/SendActivity$$Lambda$12;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 461
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800b7

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$13;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 470
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$14;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v5

    .line 471
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 472
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 473
    return-void

    .line 451
    .end local v0    # "descrEdit":Landroid/widget/EditText;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showVideoOptions(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->showVideoDialog()V

    .line 437
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08053c

    .line 415
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0804db

    .line 416
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0804da

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1}, Lcom/vkcoffee/android/SendActivity$$Lambda$10;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/SendActivity$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/SendActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$processIntent$668(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 175
    packed-switch p5, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 177
    :pswitch_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    :goto_1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vkcoffee/android/attachments/LinkAttachment;

    const/4 v1, 0x0

    new-instance v2, Lcom/vkcoffee/android/attachments/LinkAttachment;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v2, p3, v3, v4}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/vkcoffee/android/SendActivity;->openNewPost(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, ""

    goto :goto_1

    :cond_2
    move-object p2, p3

    goto :goto_1

    .line 180
    :pswitch_1
    invoke-direct {p0, p3, v0}, Lcom/vkcoffee/android/SendActivity;->openNewMessage(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 183
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_3

    const v0, 0x7f08053a

    :goto_2
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    goto :goto_0

    .line 183
    :cond_3
    const v0, 0x7f08053b

    goto :goto_2

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic lambda$processIntent$669(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$sendDocsDialog$675(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 349
    packed-switch p2, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 351
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendDocs()V

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 355
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "realPath":Ljava/lang/String;
    const-string/jumbo v0, "\\."

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "ext":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x1

    new-array v11, v0, [Lcom/vkcoffee/android/attachments/Attachment;

    new-instance v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v6

    array-length v7, v8

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v8, v7

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    aput-object v0, v11, v5

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/vkcoffee/android/SendActivity;->openNewMessage(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$sendDocsDialog$676(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$sendPhoto$670(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 247
    packed-switch p4, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 249
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "select"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string/jumbo v3, "select_album"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-class v3, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    const/16 v4, 0x67

    invoke-static {v3, v0, p0, v4}, Lcom/vkcoffee/android/navigation/Navigate;->forResult(Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/Activity;I)V

    goto :goto_0

    .line 256
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->sendDocs()V

    goto :goto_0

    .line 259
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 261
    .local v2, "uri":Landroid/net/Uri;
    new-instance v4, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/vkcoffee/android/SendActivity;->openNewPost(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 267
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 269
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v4, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 271
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/vkcoffee/android/SendActivity;->openNewMessage(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic lambda$sendPhoto$671(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$sendVideo$672(ILandroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/SendActivity;->showVideoOptions(I)V

    return-void
.end method

.method synthetic lambda$sendVideo$673(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$sendVideo$674(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showVideoDialog$679(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 10
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "owner_id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 463
    .local v7, "ownerID":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vkontakte://vk.com/videos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 464
    .local v9, "intent":Landroid/app/PendingIntent;
    new-instance v0, Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->p720:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/upload/VideoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/media/video/VideoEncoderSettings;ZIZ)V

    .line 466
    .local v0, "task":Lcom/vkontakte/android/upload/VideoUploadTask;
    const v1, 0x7f080598

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080599

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/vkontakte/android/upload/VideoUploadTask;->setDoneNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 467
    invoke-static {p0, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 468
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    .line 469
    return-void
.end method

.method synthetic lambda$showVideoDialog$680(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showVideoDialog$681(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showVideoOptions$677(ILandroid/content/DialogInterface;I)V
    .locals 6
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 417
    packed-switch p3, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 419
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->showVideoDialog()V

    goto :goto_0

    .line 422
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 423
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/VideoFile;-><init>()V

    .line 424
    .local v2, "vf":Lcom/vkcoffee/android/api/VideoFile;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 425
    iput p1, v2, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    .line 426
    invoke-static {v1}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    .line 427
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 428
    .local v0, "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v3

    iput v3, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    .line 429
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/vkcoffee/android/attachments/Attachment;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/vkcoffee/android/SendActivity;->openNewMessage(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$showVideoOptions$678(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 367
    const/16 v1, 0x65

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 368
    new-instance v2, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    const-string/jumbo v1, "images"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPhoto(Landroid/net/Uri;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachText(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->send(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 376
    :cond_0
    const/16 v1, 0x64

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 377
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->processIntent()V

    .line 407
    :goto_0
    return-void

    .line 382
    :cond_1
    const/16 v1, 0x66

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 383
    const-string/jumbo v1, "profile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput-object v1, p0, Lcom/vkcoffee/android/SendActivity;->recipient:Lcom/vkcoffee/android/UserProfile;

    .line 384
    iget-object v1, p0, Lcom/vkcoffee/android/SendActivity;->messageText:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity;->messageAttachments:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/SendActivity;->openNewMessage(Ljava/lang/String;Ljava/util/List;)V

    .line 386
    :cond_2
    const/16 v1, 0x67

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 387
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v13, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 393
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    .line 394
    .local v12, "u":Landroid/os/Parcelable;
    check-cast v12, Landroid/net/Uri;

    .end local v12    # "u":Landroid/os/Parcelable;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_4
    const-string/jumbo v1, "album"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 398
    .local v8, "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 400
    .local v9, "file":Landroid/net/Uri;
    new-instance v1, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget v5, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    .end local v9    # "file":Landroid/net/Uri;
    :cond_5
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vkontakte://vk.com/album"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 403
    .local v7, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Lcom/vkcoffee/android/upload/BatchUploadTask;

    const v2, 0x7f08056e

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f080352

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f080353

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/BatchUploadTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {p0, v1}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 404
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    .line 406
    .end local v7    # "pIntent":Landroid/app/PendingIntent;
    .end local v8    # "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    .end local v13    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v0}, Lcom/vkcoffee/android/SendActivity;->overridePendingTransition(II)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/SendActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 63
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/SendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/SendActivity;->processIntent()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method
