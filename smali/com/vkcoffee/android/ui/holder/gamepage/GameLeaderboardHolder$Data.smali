.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;
.super Ljava/lang/Object;
.source "GameLeaderboardHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

.field public itemNumber:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/data/GameLeaderboard;I)V
    .locals 0
    .param p1, "gameLeaderboard"    # Lcom/vkcoffee/android/data/GameLeaderboard;
    .param p2, "itemNumber"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->gameLeaderboard:Lcom/vkcoffee/android/data/GameLeaderboard;

    .line 32
    iput p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameLeaderboardHolder$Data;->itemNumber:I

    .line 33
    return-void
.end method
