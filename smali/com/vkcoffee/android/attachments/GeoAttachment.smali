.class public Lcom/vkcoffee/android/attachments/GeoAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "GeoAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/GeoAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final STYLE_MAP:I = 0x0

.field public static final STYLE_MAP_WITH_ADDRESS:I = 0x3

.field public static final STYLE_ONE_LINE:I = 0x1

.field public static final STYLE_TWO_LINES:I = 0x2


# instance fields
.field public address:Ljava/lang/String;

.field public id:I

.field public lat:D

.field public lon:D

.field public photo:Ljava/lang/String;

.field public style:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/vkcoffee/android/attachments/GeoAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/GeoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    .line 42
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "_lat"    # D
    .param p3, "_lon"    # D
    .param p5, "_title"    # Ljava/lang/String;
    .param p6, "_address"    # Ljava/lang/String;
    .param p7, "_id"    # I
    .param p8, "_photo"    # Ljava/lang/String;
    .param p9, "_style"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    .line 45
    iput-wide p1, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    .line 46
    iput-wide p3, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    .line 47
    iput p7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 48
    iput p9, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    .line 49
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    .line 52
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    iput-object p6, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .line 55
    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 56
    iput-object p8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->photo:Ljava/lang/String;

    .line 58
    :cond_2
    return-void
.end method

.method private constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 2
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    .line 61
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    .line 62
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    .line 63
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 66
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->photo:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/utils/Serializer;Lcom/vkcoffee/android/attachments/GeoAttachment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/utils/Serializer;
    .param p2, "x1"    # Lcom/vkcoffee/android/attachments/GeoAttachment$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-void
.end method

.method private openMap(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 157
    iget v2, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    if-lez v2, :cond_0

    .line 158
    invoke-static {p0, v6}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->start(Lcom/vkcoffee/android/attachments/GeoAttachment;Z)Lcom/vkcoffee/android/navigation/Navigator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 167
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 162
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?z=18&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "x":Ljava/lang/Throwable;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, v6}, Lcom/vkcoffee/android/ActivityUtils;->requireGoogleMaps(Landroid/app/Activity;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f10014d

    const v2, 0x7f100034

    .line 199
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 203
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x44000000    # 512.0f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010009

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->getResFromTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/GeoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 6

    .prologue
    .line 180
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->photo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-wide v2, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    const/16 v4, 0x12c

    const/16 v5, 0x82

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 99
    iget v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 100
    if-nez p2, :cond_0

    const-string/jumbo v7, "signature"

    invoke-static {p1, v7}, Lcom/vkcoffee/android/attachments/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 102
    .local v6, "v":Landroid/view/View;
    :goto_0
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "title":Ljava/lang/String;
    :goto_1
    const v7, 0x7f10013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v7, 0x7f10013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f020142

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 113
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/GeoAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "v":Landroid/view/View;
    :goto_2
    return-object v6

    :cond_0
    move-object v6, p2

    .line 100
    goto :goto_0

    .line 104
    .restart local v6    # "v":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 105
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 107
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v5    # "title":Ljava/lang/String;
    :cond_3
    const v7, 0x7f080395

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_1

    .line 115
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    iget v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 116
    if-eqz p2, :cond_5

    move-object v6, p2

    .line 117
    .restart local v6    # "v":Landroid/view/View;
    :goto_3
    const v7, 0x7f10013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v7, 0x7f10013f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v7, 0x7f10014d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f010009

    invoke-static {p1, v8}, Lcom/vkcoffee/android/ViewUtils;->getResFromTheme(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/attachments/GeoAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 116
    .end local v6    # "v":Landroid/view/View;
    :cond_5
    const-string/jumbo v7, "common"

    invoke-static {p1, v7}, Lcom/vkcoffee/android/attachments/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    goto :goto_3

    .line 122
    :cond_6
    iget v7, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 123
    const v7, 0x7f030040

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 124
    .restart local v6    # "v":Landroid/view/View;
    const v7, 0x7f10013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v7, 0x7f10013f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {p0, p1}, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v2}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 128
    .local v2, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    invoke-static {}, Lcom/vkcoffee/android/NewsEntry;->getMaxThumbsWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 129
    const/4 v7, -0x2

    iput v7, v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 130
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 131
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 134
    .end local v2    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "fl":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "iv":Landroid/widget/ImageView;
    const v7, 0x7f100034

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 138
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x43960000    # 300.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x43020000    # 130.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v3, "marker":Landroid/widget/ImageView;
    const v7, 0x7f020255

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v4, "mparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x31

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-static {p0, p1}, Lcom/vkcoffee/android/attachments/GeoAttachment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v6, v0

    .line 152
    goto/16 :goto_2
.end method

.method synthetic lambda$getViewForList$189(Landroid/view/View;)V
    .locals 1
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/attachments/GeoAttachment;->openMap(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$getViewForList$190(Landroid/view/View;)V
    .locals 1
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/attachments/GeoAttachment;->openMap(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$getViewForList$191(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2, "v1"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/GeoAttachment;->openMap(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$getViewForList$192(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/GeoAttachment;->openMap(Landroid/content/Context;)V

    return-void
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 2
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-virtual {p1, v0, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeDouble(D)V

    .line 84
    iget-wide v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-virtual {p1, v0, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeDouble(D)V

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 90
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    const v3, 0x7f10014d

    const v2, 0x7f100034

    .line 188
    iget v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;

    invoke-direct {v1, p2}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
