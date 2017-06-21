.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameLeaderboardHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# static fields
.field private static final formatter:Ljava/text/DecimalFormat;

.field private static final symbols:Ljava/text/DecimalFormatSymbols;


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;

.field private textViewName:Landroid/widget/TextView;

.field private textViewNumber:Landroid/widget/TextView;

.field private textViewPoints:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    sput-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->formatter:Ljava/text/DecimalFormat;

    .line 37
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 40
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->symbols:Ljava/text/DecimalFormatSymbols;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 41
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->formatter:Ljava/text/DecimalFormat;

    sget-object v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    const v0, 0x7f03002d

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 53
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->imageView:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f100131

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->textViewName:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f100132

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->textViewPoints:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f100130

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->textViewNumber:Landroid/widget/TextView;

    .line 57
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;)V
    .locals 3
    .param p1, "gameLiderboard"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;

    .line 62
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    iget-object v0, v0, Lcom/vkcoffee/android/data/GameLeaderboard;->userProfile:Lcom/vkcoffee/android/UserProfile;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    iget-object v1, v1, Lcom/vkcoffee/android/data/GameLeaderboard;->userProfile:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const v2, 0x7f0202f2

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->textViewName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    iget-object v1, v1, Lcom/vkcoffee/android/data/GameLeaderboard;->userProfile:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->textViewPoints:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->getSubText(Lcom/vkcoffee/android/data/GameLeaderboard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->textViewNumber:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->itemNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    iget v0, v0, Lcom/vkcoffee/android/data/GameLeaderboard;->userId:I

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->itemView:Landroid/view/View;

    const v1, -0x14110e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->itemView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    return-void
.end method

.method public getSubText(Lcom/vkcoffee/android/data/GameLeaderboard;)Ljava/lang/String;
    .locals 6
    .param p1, "l"    # Lcom/vkcoffee/android/data/GameLeaderboard;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 86
    iget-object v0, p1, Lcom/vkcoffee/android/data/GameLeaderboard;->points:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0014

    iget v2, p1, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0013

    iget v2, p1, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    iget v1, v1, Lcom/vkcoffee/android/data/GameLeaderboard;->userId:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    return-void
.end method
