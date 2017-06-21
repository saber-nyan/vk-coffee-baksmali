.class public Lcom/vkcoffee/android/ui/holder/GroupHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GroupHolder.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final sFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private mData:Lcom/vkcoffee/android/api/Group;

.field private mImage:Landroid/widget/ImageView;

.field private mInfo:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    sput-object v1, Lcom/vkcoffee/android/ui/holder/GroupHolder;->sFormatter:Ljava/text/DecimalFormat;

    .line 33
    sget-object v1, Lcom/vkcoffee/android/ui/holder/GroupHolder;->sFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 34
    .local v0, "symbols":Ljava/text/DecimalFormatSymbols;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 35
    sget-object v1, Lcom/vkcoffee/android/ui/holder/GroupHolder;->sFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    const v0, 0x7f0300ad

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 24
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mImage:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mInfo:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mSubtitle:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mTitle:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/Group;)V
    .locals 10
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mData:Lcom/vkcoffee/android/api/Group;

    .line 50
    iget-object v1, p1, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 51
    const v1, 0x7f0e001e

    iget v2, p1, Lcom/vkcoffee/android/api/Group;->members_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/vkcoffee/android/ui/holder/GroupHolder;->sFormatter:Ljava/text/DecimalFormat;

    iget v5, p1, Lcom/vkcoffee/android/api/Group;->members_count:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v1, v2, v3}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mInfo:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_1
    iget-boolean v1, p1, Lcom/vkcoffee/android/api/Group;->verified:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    if-eqz v1, :cond_6

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/Group;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 60
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_5

    .line 61
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "title":Landroid/text/SpannableStringBuilder;
    iget-object v1, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .restart local v0    # "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 63
    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 64
    iget-boolean v1, p1, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    if-eqz v1, :cond_3

    .line 65
    new-instance v1, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202fb

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    :cond_3
    iget-boolean v1, p1, Lcom/vkcoffee/android/api/Group;->verified:Z

    if-eqz v1, :cond_5

    .line 69
    iget-boolean v1, p1, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 71
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 73
    :cond_4
    new-instance v1, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02023a

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    :cond_5
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/api/Group;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .end local v0    # "title":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->bind(Lcom/vkcoffee/android/api/Group;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    return-void
.end method

.method public onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/GroupHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)",
            "Lcom/vkcoffee/android/ui/holder/GroupHolder;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "listener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/Group;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 45
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mData:Lcom/vkcoffee/android/api/Group;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method
