.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameFeedHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/GameFeedEntry;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# static fields
.field public static final IMAGE_INDEX_APP:I = 0x1

.field public static final IMAGE_INDEX_USER:I


# instance fields
.field private clickSource:Ljava/lang/String;

.field private final icon:Landroid/widget/ImageView;

.field private final isNeedShowDate:Z

.field lastData:Lcom/vkcoffee/android/data/GameFeedEntry;

.field private openCardByClick:Z

.field private final photo:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;

.field private visitSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;-><init>(Landroid/view/ViewGroup;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isNeedShowDate"    # Z

    .prologue
    .line 52
    const v0, 0x7f030028

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->openCardByClick:Z

    .line 53
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->isNeedShowDate:Z

    .line 55
    const v0, 0x7f100120

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->text:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f10011e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->photo:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f10011f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->icon:Landroid/widget/ImageView;

    .line 59
    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public static getImageUrl(ILcom/vkcoffee/android/data/GameFeedEntry;)Ljava/lang/String;
    .locals 2
    .param p0, "image"    # I
    .param p1, "gameFeedEntry"    # Lcom/vkcoffee/android/data/GameFeedEntry;

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    iget-object v0, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static spanForAppTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "appTitle"    # Ljava/lang/String;
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 148
    .local v0, "spannable":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 149
    return-object v0
.end method

.method private static spanForSecondArgs(I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "arg"    # I

    .prologue
    .line 137
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForSecondArgs(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static spanForSecondArgs(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 142
    .local v0, "spannable":Landroid/text/Spannable;
    new-instance v1, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 143
    return-object v0
.end method

.method private static spanForUserName(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 154
    .local v0, "spannable":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 155
    new-instance v1, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 156
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/GameFeedEntry;)V
    .locals 3
    .param p1, "data"    # Lcom/vkcoffee/android/data/GameFeedEntry;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->lastData:Lcom/vkcoffee/android/data/GameFeedEntry;

    .line 75
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->photo:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/GameFeedEntry;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 78
    .local v0, "formattedText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->formatText(Lcom/vkcoffee/android/data/GameFeedEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/data/GameFeedEntry;->setTag(Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/vkcoffee/android/data/GameFeedEntry;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->bind(Lcom/vkcoffee/android/data/GameFeedEntry;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->photo:Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0202b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method formatText(Lcom/vkcoffee/android/data/GameFeedEntry;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "data"    # Lcom/vkcoffee/android/data/GameFeedEntry;

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 88
    .local v0, "colorTextBlue":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f009b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 89
    .local v1, "colorTextLightGray":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 91
    .local v2, "result":Landroid/text/SpannableStringBuilder;
    iget-object v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForUserName(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 93
    .local v4, "userName":Ljava/lang/CharSequence;
    sget-object v5, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder$1;->$SwitchMap$com$vkontakte$android$data$GameFeedEntry$Type:[I

    iget-object v6, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->type:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    invoke-virtual {v6}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 96
    iget-object v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0801c2

    :goto_0
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    :goto_1
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->isNeedShowDate:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->date:I

    .line 129
    invoke-static {v7}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    :goto_2
    invoke-virtual {v6, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 131
    .local v3, "time":Landroid/text/Spannable;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v3, v5, v10, v6, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 132
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    return-object v2

    .line 96
    .end local v3    # "time":Landroid/text/Spannable;
    :cond_0
    const v5, 0x7f0801c3

    goto :goto_0

    .line 100
    :pswitch_0
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->isNeedShowDate:Z

    if-eqz v5, :cond_2

    .line 101
    iget-object v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_1

    const v5, 0x7f0801ca

    :goto_3
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    iget v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->level:I

    .line 102
    invoke-static {v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForSecondArgs(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    .line 101
    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    const v5, 0x7f0801cc

    goto :goto_3

    .line 104
    :cond_2
    iget-object v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_3

    const v5, 0x7f0801c9

    :goto_4
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v10

    iget v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->level:I

    .line 105
    invoke-static {v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForSecondArgs(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v7, v7, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForAppTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    .line 104
    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    :cond_3
    const v5, 0x7f0801cb

    goto :goto_4

    .line 109
    :pswitch_1
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->isNeedShowDate:Z

    if-eqz v5, :cond_4

    .line 110
    const v5, 0x7f0801b8

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    iget-object v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->text:Ljava/lang/String;

    .line 111
    invoke-static {v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForSecondArgs(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    .line 110
    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 113
    :cond_4
    const v5, 0x7f0801b7

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v10

    iget-object v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->text:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v7, v7, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    .line 114
    invoke-static {v7, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForAppTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    .line 113
    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 118
    :pswitch_2
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->isNeedShowDate:Z

    if-eqz v5, :cond_6

    .line 119
    iget-object v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_5

    const v5, 0x7f0801dd

    :goto_5
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    iget v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->value:I

    .line 120
    invoke-static {v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForSecondArgs(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    .line 119
    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    :cond_5
    const v5, 0x7f0801df

    goto :goto_5

    .line 122
    :cond_6
    iget-object v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_7

    const v5, 0x7f0801dc

    :goto_6
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v10

    iget v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->value:I

    .line 123
    invoke-static {v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForSecondArgs(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v7, v7, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->spanForAppTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    .line 122
    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    :cond_7
    const v5, 0x7f0801de

    goto :goto_6

    .line 129
    :cond_8
    iget v5, p1, Lcom/vkcoffee/android/data/GameFeedEntry;->date:I

    int-to-long v8, v5

    .line 130
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/vkcoffee/android/TimeUtils;->shortDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick()V
    .locals 6

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->openCardByClick:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->lastData:Lcom/vkcoffee/android/data/GameFeedEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->lastData:Lcom/vkcoffee/android/data/GameFeedEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget v3, v3, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->visitSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->clickSource:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->visitSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->clickSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->lastData:Lcom/vkcoffee/android/data/GameFeedEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/ApiApplication;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public setClickInfo(ZLjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;
    .locals 0
    .param p1, "openCardByClick"    # Z
    .param p2, "visitSource"    # Ljava/lang/String;
    .param p3, "clickSource"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->openCardByClick:Z

    .line 66
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->visitSource:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->clickSource:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameFeedHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
