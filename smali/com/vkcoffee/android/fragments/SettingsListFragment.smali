.class public Lcom/vkcoffee/android/fragments/SettingsListFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "SettingsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/functions/VoidF1;
.implements Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;,
        Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;,
        Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vkcoffee/android/functions/VoidF1",
        "<",
        "Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;",
        ">;",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;"
    }
.end annotation


# static fields
.field private static final AVA_RESULT:I = 0xf3d


# instance fields
.field private final adapter:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

.field private headerView:Landroid/view/View;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 70
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->adapter:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    .line 72
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->setRefreshEnabled(Z)V

    .line 249
    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->updateOnlineState()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/SettingsListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->setUserPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->confirmLogout()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 371
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080298

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 372
    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 360
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$4;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/SettingsListFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 368
    return-void
.end method

.method private setUserPhoto(Ljava/lang/String;)V
    .locals 4
    .param p1, "photoSrc"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f100146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 328
    .local v0, "photo":Landroid/widget/ImageView;
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/widget/ImageView;)V

    .line 345
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 328
    invoke-static {v1, v2, p1, v3}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 346
    return-void
.end method

.method private updateOnlineState()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->adapter:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->createData()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 291
    return-void
.end method

.method public f(Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    .prologue
    .line 423
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;->fragment:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;->fragment:Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;->onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->f(Lcom/vkcoffee/android/fragments/SettingsListFragment$Item;)V

    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->adapter:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method lambda$confirmLogout$603(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 375
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 378
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 381
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 382
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCurrentUID()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MAC;->deleteAcc(ILandroid/app/Activity;)V

    .line 383
    invoke-static {}, Lcom/vkcoffee/android/MAC;->clearCurrentUID()V

    .line 384
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/app/ProgressDialog;)V

    .line 393
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;->start()V

    .line 394
    return-void
.end method

.method lambda$onActivityResult$601(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->deletePhoto()V

    .line 324
    return-void
.end method

.method lambda$run$602(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 403
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 405
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/MainActivity;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/MainActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MainActivity;->restartAfterLogout()V

    .line 408
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0xf3d

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 314
    if-ne p1, v11, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    const-string v5, "cropLeft"

    invoke-virtual {p3, v5, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    const-string v6, "cropTop"

    invoke-virtual {p3, v6, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    const-string v7, "cropRight"

    invoke-virtual {p3, v7, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    const-string v8, "cropBottom"

    invoke-virtual {p3, v8, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZFFFF)V

    invoke-static {v9, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 317
    :cond_0
    if-ne p1, v11, :cond_1

    if-ne p2, v4, :cond_1

    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 320
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 253
    const v1, 0x7f0802a9

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->setTitle(I)V

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.vkcoffee.android.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->loadData()V

    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "z":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 272
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, "null"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->showUpdatePhotoDlg(Z)V

    goto :goto_0

    .line 278
    :sswitch_1
    const-class v1, Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100146 -> :sswitch_0
        0x7f1003ae -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v1, 0x7f0200a5

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 411
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 412
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    if-ne v0, v3, :cond_0

    .line 413
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->isTablet:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->updateDecorator()V

    .line 420
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03016a

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    .line 299
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "username"

    const-string v4, "DELETED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f100146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    .local v0, "photo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, "null"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->setUserPhoto(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f1003ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->updateOnlineState()V

    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroyView()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->headerView:Landroid/view/View;

    .line 311
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDetach()V

    .line 263
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showUpdatePhotoDlg(Z)V
    .locals 6
    .param p1, "havePhotos"    # Z

    .prologue
    const/4 v5, 0x1

    .line 349
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "allow_album"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 350
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 352
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    :cond_0
    const-string v2, "no_thumbs"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "force_thumb"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const/16 v2, 0xf3d

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    return-void
.end method
