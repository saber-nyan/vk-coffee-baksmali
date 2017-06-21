.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "CheckInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/GeoPlace;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/GeoPlace;

.field final mImage:Landroid/widget/ImageView;

.field final mInfo:Landroid/widget/TextView;

.field final mSubtitle:Landroid/widget/TextView;

.field final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 127
    const v0, 0x7f030130

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 121
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mImage:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mInfo:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mSubtitle:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mTitle:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/GeoPlace;)V
    .locals 5
    .param p1, "place"    # Lcom/vkcoffee/android/GeoPlace;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    .line 133
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/GeoPlace;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget v3, p1, Lcom/vkcoffee/android/GeoPlace;->id:I

    if-gez v3, :cond_2

    .line 135
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddress:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    iget-object v3, p1, Lcom/vkcoffee/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mImage:Landroid/widget/ImageView;

    .line 148
    .local v1, "imageView":Landroid/widget/ImageView;
    iget v3, p1, Lcom/vkcoffee/android/GeoPlace;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    const v0, 0x7f0201bf

    .line 149
    .local v0, "i":I
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mInfo:Landroid/widget/TextView;

    iget v4, p1, Lcom/vkcoffee/android/GeoPlace;->checkins:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mInfo:Landroid/widget/TextView;

    iget v3, p1, Lcom/vkcoffee/android/GeoPlace;->checkins:I

    if-lez v3, :cond_7

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    return-void

    .line 135
    :cond_1
    const v3, 0x7f080293

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 136
    :cond_2
    iget v3, p1, Lcom/vkcoffee/android/GeoPlace;->distance:I

    if-lez v3, :cond_4

    .line 137
    invoke-virtual {p1}, Lcom/vkcoffee/android/GeoPlace;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/vkcoffee/android/GeoPlace;->distance:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0802ac

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/GeoPlace;->setTag(Ljava/lang/Object;)V

    .line 142
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_5
    iget v3, p1, Lcom/vkcoffee/android/GeoPlace;->id:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_6

    const v0, 0x7f0201c0

    goto :goto_2

    :cond_6
    const v0, 0x7f020132

    goto :goto_2

    .line 152
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_7
    const/4 v3, 0x4

    goto :goto_3
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/GeoPlace;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->bind(Lcom/vkcoffee/android/GeoPlace;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-object v0, v0, Lcom/vkcoffee/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget v2, v2, Lcom/vkcoffee/android/GeoPlace;->id:I

    packed-switch v2, :pswitch_data_0

    .line 175
    new-instance v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>()V

    .line 176
    .local v0, "att":Lcom/vkcoffee/android/attachments/GeoAttachment;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-wide v2, v2, Lcom/vkcoffee/android/GeoPlace;->lat:D

    iput-wide v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    .line 177
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-wide v2, v2, Lcom/vkcoffee/android/GeoPlace;->lon:D

    iput-wide v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    .line 178
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-object v2, v2, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget v2, v2, Lcom/vkcoffee/android/GeoPlace;->id:I

    iput v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 180
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-object v2, v2, Lcom/vkcoffee/android/GeoPlace;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-object v2, v2, Lcom/vkcoffee/android/GeoPlace;->photo:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->photo:Ljava/lang/String;

    .line 182
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->start(Lcom/vkcoffee/android/attachments/GeoAttachment;Z)Lcom/vkcoffee/android/navigation/Navigator;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    const/16 v4, 0x2099

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 183
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/GeoAttachment;
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    const/16 v4, 0x209a

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 165
    new-instance v1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-direct {v1}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>()V

    .line 166
    .local v1, "point":Lcom/vkcoffee/android/attachments/GeoAttachment;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    .line 167
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    .line 168
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "point"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 170
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mData:Lcom/vkcoffee/android/GeoPlace;

    iget-object v0, v0, Lcom/vkcoffee/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    :cond_0
    return-void
.end method
