.class public Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;
.super Ljava/lang/Object;
.source "GetWallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/execute/GetWallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public adsFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allowBuyVotes:Z

.field public bdate:Ljava/lang/String;

.field public country:I

.field public exportFb:Z

.field public exportTwi:Z

.field public f:Z

.field public gifAutoplayAvailable:Z

.field public intro:I

.field public name:Ljava/lang/String;

.field public needUpdateGoogleNow:Z

.field public numNewStickers:I

.field public photo:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public stickersUpdates:I

.field public supportUrl:Ljava/lang/String;

.field public time:I

.field public useVigo:Z

.field public vigoConnectTimeout:I

.field public vigoReadTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
