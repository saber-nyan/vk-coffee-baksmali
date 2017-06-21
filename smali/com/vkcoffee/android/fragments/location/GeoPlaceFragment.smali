.class public Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "GeoPlaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;,
        Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;
    }
.end annotation


# instance fields
.field mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

.field mCheckInMode:Z

.field mInfo:Landroid/widget/TextView;

.field mMap:Lcom/google/android/gms/maps/MapView;

.field mPhoto:Landroid/widget/ImageView;

.field mPhotoURL:Ljava/lang/String;

.field mPlace:Lcom/vkcoffee/android/GeoPlace;

.field mStatusText:Ljava/lang/String;

.field mSubtitle:Landroid/widget/TextView;

.field mUserPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

.field mUsersCount:Landroid/widget/TextView;

.field mUsersWrap:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUserPhotos:Ljava/util/List;

    .line 79
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->setLayout(I)V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;Lme/grishka/appkit/api/APIRequest;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->showContent()V

    return-void
.end method

.method public static start(Lcom/vkcoffee/android/attachments/GeoAttachment;Z)Lcom/vkcoffee/android/navigation/Navigator;
    .locals 1
    .param p0, "att"    # Lcom/vkcoffee/android/attachments/GeoAttachment;
    .param p1, "checkin"    # Z

    .prologue
    .line 83
    new-instance v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;->point(Lcom/vkcoffee/android/attachments/GeoAttachment;)Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;->checkin(Z)Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doLoadData()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/vkcoffee/android/api/places/PlacesGetInfo;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/places/PlacesGetInfo;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;-><init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/places/PlacesGetInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 213
    return-void
.end method

.method invalidate()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 251
    const/4 v4, 0x0

    .line 252
    .local v4, "i2":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mSubtitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mStatusText:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mSubtitle:Landroid/widget/TextView;

    .line 254
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mStatusText:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 255
    const/16 v3, 0x8

    .line 259
    .local v3, "i":I
    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget-object v0, v8, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    .line 261
    .local v0, "address":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mInfo:Landroid/widget/TextView;

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 263
    const/16 v3, 0x8

    .line 267
    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget v8, v8, Lcom/vkcoffee/android/GeoPlace;->checkins:I

    if-gtz v8, :cond_7

    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 274
    .local v2, "hasUsers":Z
    :goto_3
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsersWrap:Landroid/view/View;

    .line 275
    .local v7, "view":Landroid/view/View;
    if-nez v2, :cond_1

    .line 276
    const/16 v4, 0x8

    .line 278
    :cond_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 279
    if-eqz v2, :cond_2

    .line 280
    const/16 v8, 0xa

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUserPhotos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    .local v1, "count":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/vkcoffee/android/ui/PhotoStripView;->setPadding(I)V

    .line 282
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v8, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 283
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsersCount:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget v10, v10, Lcom/vkcoffee/android/GeoPlace;->checkins:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020132

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPhotoURL:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 285
    const/4 v5, 0x0

    .local v5, "i3":I
    :goto_4
    if-lt v5, v1, :cond_8

    .line 290
    .end local v1    # "count":I
    .end local v5    # "i3":I
    :cond_2
    return-void

    .line 257
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "hasUsers":Z
    .end local v3    # "i":I
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    goto :goto_0

    .line 260
    :cond_4
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v0, v8, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v0, v9

    goto :goto_1

    .line 265
    .restart local v0    # "address":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 272
    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "hasUsers":Z
    goto :goto_3

    .line 286
    .restart local v1    # "count":I
    .restart local v5    # "i3":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_8
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v8, v5}, Lcom/vkcoffee/android/ui/PhotoStripView;->getTargetFor(I)Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    move-result-object v10

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUserPhotos:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v9, v8}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 285
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method lambda$null$394(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.google.android.apps.maps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method lambda$onViewCreated$395(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 152
    :sswitch_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "geo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget-wide v6, v6, Lcom/vkcoffee/android/GeoPlace;->lat:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget-wide v6, v6, Lcom/vkcoffee/android/GeoPlace;->lon:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?z=18&q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget-wide v6, v6, Lcom/vkcoffee/android/GeoPlace;->lat:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget-wide v6, v6, Lcom/vkcoffee/android/GeoPlace;->lon:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "th":Ljava/lang/Throwable;
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08029c

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08029d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080326

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800dd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 159
    .end local v2    # "th":Ljava/lang/Throwable;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "point"

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 165
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget v3, v3, Lcom/vkcoffee/android/GeoPlace;->groupID:I

    if-eqz v3, :cond_0

    .line 166
    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    iget v4, v4, Lcom/vkcoffee/android/GeoPlace;->groupID:I

    neg-int v4, v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 171
    :sswitch_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "place_id"

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v4, v4, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-class v3, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x7f1001c0 -> :sswitch_0
        0x7f100202 -> :sswitch_0
        0x7f10021e -> :sswitch_1
        0x7f100352 -> :sswitch_2
        0x7f100353 -> :sswitch_3
    .end sparse-switch
.end method

.method lambda$onViewCreated$396(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 191
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v4, v4, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 192
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v4, v4, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 194
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->loadData()V

    .line 105
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vkcoffee/android/ActivityUtils;->requireGoogleMaps(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const v0, 0x7f080165

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checkin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mCheckInMode:Z

    .line 100
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const v0, 0x7f03012f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroy()V

    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 243
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroyView()V

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    .line 235
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 220
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 227
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f10021e

    const/4 v9, 0x0

    .line 108
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    const v3, 0x7f080395

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->setTitle(I)V

    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v3

    const v4, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v3, 0x7f1001c0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 113
    .local v1, "mapContainer":Landroid/view/ViewGroup;
    const v3, 0x7f1000dd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f100146

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPhoto:Landroid/widget/ImageView;

    .line 115
    const v3, 0x7f100202

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mInfo:Landroid/widget/TextView;

    .line 116
    const v3, 0x7f100169

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mSubtitle:Landroid/widget/TextView;

    .line 117
    const v3, 0x7f100354

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsersCount:Landroid/widget/TextView;

    .line 118
    const v3, 0x7f100353

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsersWrap:Landroid/view/View;

    .line 119
    const v3, 0x7f100203

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/PhotoStripView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 120
    const v3, 0x7f100216

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-static {v3, v4}, Lcom/vkcoffee/android/ViewUtils;->setBackgroundWithViewPadding(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 122
    .local v0, "mClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mAttachment:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mSubtitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mStatusText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->invalidate()V

    .line 126
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mCheckInMode:Z

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_0
    const v3, 0x7f100352

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUsersWrap:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.google.android.apps.maps"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    .line 135
    new-instance v3, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$1;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v5, v9}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$1;-><init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    .line 140
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 141
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)Lcom/google/android/gms/maps/OnMapReadyCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
