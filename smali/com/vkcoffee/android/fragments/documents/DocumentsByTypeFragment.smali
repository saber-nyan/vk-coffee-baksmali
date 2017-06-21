.class public Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "DocumentsByTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/api/Document;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRELOADED_DOCS:Ljava/lang/String; = "preloaded_docs"


# instance fields
.field private docsAdapter:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 51
    new-instance v0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;-><init>(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->docsAdapter:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->setRefreshEnabled(Z)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private confirmAndDelete(Lcom/vkcoffee/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 135
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;Lcom/vkcoffee/android/api/Document;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 139
    return-void
.end method

.method public static create(IILcom/vkcoffee/android/data/VKList;)Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
    .locals 3
    .param p0, "ownerId"    # I
    .param p1, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;)",
            "Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "documents":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/Document;>;"
    new-instance v1, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;-><init>()V

    .line 43
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "owner_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string/jumbo v2, "type_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v2, "preloaded_docs"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method private doDelete(Lcom/vkcoffee/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 142
    new-instance v0, Lcom/vkcoffee/android/api/docs/DocsDelete;

    iget v1, p1, Lcom/vkcoffee/android/api/Document;->oid:I

    iget v2, p1, Lcom/vkcoffee/android/api/Document;->did:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/docs/DocsDelete;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$2;-><init>(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/Document;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/docs/DocsDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 150
    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "owner_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "ownerID":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "typeID":I
    new-instance v2, Lcom/vkcoffee/android/api/docs/DocsGet;

    invoke-direct {v2, v0, p1, p2, v1}, Lcom/vkcoffee/android/api/docs/DocsGet;-><init>(IIII)V

    new-instance v3, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$1;

    invoke-direct {v3, p0, p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$1;-><init>(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;Landroid/app/Fragment;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/docs/DocsGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 89
    .end local v0    # "ownerID":I
    .end local v1    # "typeID":I
    :cond_0
    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->docsAdapter:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    return-object v0
.end method

.method synthetic lambda$confirmAndDelete$329(Lcom/vkcoffee/android/api/Document;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->doDelete(Lcom/vkcoffee/android/api/Document;)V

    .line 138
    return-void
.end method

.method synthetic lambda$onDocumentLongClick$328(Lcom/vkcoffee/android/api/Document;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 120
    packed-switch p3, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 122
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->confirmAndDelete(Lcom/vkcoffee/android/api/Document;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onDocumentClick(Lcom/vkcoffee/android/api/Document;)V
    .locals 8
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 97
    iget-object v2, p1, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    .line 98
    .local v2, "thumb":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/Document;->getExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4, p1}, Lcom/vkcoffee/android/gifs/GifViewer;->start(Landroid/app/Activity;Lcom/vkcoffee/android/api/Document;)Lcom/vkcoffee/android/gifs/GifViewer;

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v4, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    iget-object v7, p1, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v4, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 107
    .local v1, "req":Landroid/app/DownloadManager$Request;
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 108
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 109
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "download"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 111
    .local v0, "mgr":Landroid/app/DownloadManager;
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0
.end method

.method onDocumentLongClick(Lcom/vkcoffee/android/api/Document;)Z
    .locals 6
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "owner_id"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "ownerID":I
    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    if-gez v0, :cond_1

    neg-int v3, v0

    invoke-static {v3}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const v5, 0x7f08013c

    .line 119
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v1, 0x7f080119

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;Lcom/vkcoffee/android/api/Document;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 131
    :cond_1
    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "preloaded_docs"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v0, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 65
    .local v2, "p":Landroid/os/Parcelable;
    check-cast v2, Lcom/vkcoffee/android/api/Document;

    .end local v2    # "p":Landroid/os/Parcelable;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->onDataLoaded(Ljava/util/List;)V

    .line 69
    .end local v0    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    :cond_1
    return-void
.end method

.method public updateListRemoveItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->docsAdapter:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->docsAdapter:Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment$DocsAdapter;->notifyItemRemoved(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsByTypeFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 159
    :cond_1
    return-void
.end method
