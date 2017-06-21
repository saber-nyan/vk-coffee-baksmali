.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "NewPostFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$12;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$5;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$6;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$7;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$8;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$9;,
        Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    }
.end annotation


# static fields
.field public static final POLL_EDIT_RESULT:I = 0x9


# instance fields
.field attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field emit:I

.field geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAttachments:[Landroid/os/Parcelable;

.field mCamera:Z

.field mClipboardManager:Landroid/content/ClipboardManager;

.field mEdit:Lcom/vkcoffee/android/NewsEntry;

.field mFbIcon:Landroid/view/View;

.field mFriendsOnlyIcon:Landroid/view/View;

.field mGroupPhoto:Ljava/lang/String;

.field mGroupTitle:Ljava/lang/String;

.field mLocation:Landroid/widget/ImageView;

.field mLocationAddress:Landroid/widget/TextView;

.field mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field mPublic:Z

.field mSendAction:Z

.field mSendEnabled:Z

.field mSendIcon:Landroid/graphics/drawable/Drawable;

.field mSendItem:Landroid/view/MenuItem;

.field mSendText:I

.field mSettings:Landroid/view/View;

.field mSignatureText:Landroid/widget/TextView;

.field mStatusEdit:Landroid/widget/EditText;

.field mSuggest:Z

.field mTwitterIcon:Landroid/view/View;

.field optionsAlertView:Landroid/widget/ListView;

.field photoURI:Landroid/net/Uri;

.field postponeTo:Ljava/util/Calendar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field text:Ljava/lang/String;

.field trying:I

.field uid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 126
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 132
    const v0, 0x7f08046c

    iput v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendText:I

    .line 141
    iput v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    .line 143
    iput v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->trying:I

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    .line 1522
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$1;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/news/NewPostFragment;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->setTitle(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->updateBottomLine()V

    return-void
.end method

.method private updateBottomLine()V
    .locals 9

    .prologue
    const v8, 0x7f1003e5

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->updTextView()V

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "textFromTextView":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f080541

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v0, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    .line 265
    .local v0, "s":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 275
    :goto_1
    return-void

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v0, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->updTextView()V

    goto :goto_1
.end method


# virtual methods
.method lambda$showKeyboard$472(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1656
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1643
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/ContainerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1644
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 1645
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1532
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1533
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->setHasOptionsMenu(Z)V

    .line 1536
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1537
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkcoffee/android/Platform;->CHANGE_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 1543
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/NewsEntry;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    .line 1544
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "suggest"

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSuggest:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSuggest:Z

    .line 1545
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "public"

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPublic:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPublic:Z

    .line 1546
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "send_action"

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendAction:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendAction:Z

    .line 1547
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "group_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mGroupTitle:Ljava/lang/String;

    .line 1548
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "group_photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mGroupPhoto:Ljava/lang/String;

    .line 1549
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mCamera:Z

    .line 1550
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    .line 1551
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->text:Ljava/lang/String;

    .line 1552
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photoURI"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->photoURI:Landroid/net/Uri;

    .line 1553
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPhotos:Ljava/util/ArrayList;

    .line 1554
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "attachments"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mAttachments:[Landroid/os/Parcelable;

    .line 1555
    return-void

    .line 1539
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 1617
    const v0, 0x7f100019

    iget v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendText:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    .line 1618
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendIcon:Landroid/graphics/drawable/Drawable;

    .line 1619
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1620
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1621
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1622
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1623
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    iget v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendText:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1624
    return-void

    .line 1622
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1559
    const v0, 0x7f03018b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1627
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100019

    if-ne v0, v1, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->send()V

    .line 1630
    :cond_0
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1634
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onResume()V

    .line 1635
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->showKeyboard()V

    .line 1636
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f1003ed

    const v3, 0x7f1003e9

    const v6, 0x7f1003e5

    .line 1563
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1564
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSuggest:Z

    if-eqz v1, :cond_0

    .line 1565
    const v1, 0x7f08040f

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->setTitle(I)V

    .line 1571
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    const v2, 0x7f020234

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 1572
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1573
    const v1, 0x7f1003e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    .line 1574
    const v1, 0x7f1003e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mFbIcon:Landroid/view/View;

    .line 1575
    const v1, 0x7f1003e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mTwitterIcon:Landroid/view/View;

    .line 1576
    const v1, 0x7f1003e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mFriendsOnlyIcon:Landroid/view/View;

    .line 1577
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocation:Landroid/widget/ImageView;

    .line 1578
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocationAddress:Landroid/widget/TextView;

    .line 1579
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSettings:Landroid/view/View;

    .line 1580
    const v1, 0x7f10013e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    .line 1581
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1582
    const v1, 0x7f1003eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1584
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1585
    const v1, 0x7f1003ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1586
    const v1, 0x7f1003ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1587
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocation:Landroid/widget/ImageView;

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocation:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1588
    const v1, 0x7f1003e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .line 1589
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isWallPhoto:Z

    .line 1590
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iget v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 1591
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;)V

    .line 1592
    const v1, 0x7f1003e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/ViewUtils;->setNoClipRecursive(Landroid/view/View;)V

    .line 1593
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocationAddress:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->updTextView()V

    .line 1602
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1603
    .local v0, "listenerTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$2;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->showKeyboard()V

    .line 1613
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPresenter:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->setupInitialData()V

    .line 1614
    return-void

    .line 1566
    .end local v0    # "listenerTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v1, :cond_1

    .line 1567
    const v1, 0x7f0803a5

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->setTitle(I)V

    goto/16 :goto_0

    .line 1569
    :cond_1
    const v1, 0x7f0802cb

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->setTitle(I)V

    goto/16 :goto_0
.end method

.method showKeyboard()V
    .locals 6

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1649
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment;Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1652
    :cond_0
    return-void
.end method

.method public updTextView()V
    .locals 4

    .prologue
    const v1, 0x7f1003e5

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0418\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->list:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0418\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
