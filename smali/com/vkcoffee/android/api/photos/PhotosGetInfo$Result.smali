.class public Lcom/vkcoffee/android/api/photos/PhotosGetInfo$Result;
.super Ljava/lang/Object;
.source "PhotosGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/photos/PhotosGetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public canComment:Z

.field public comments:I

.field public liked:Z

.field public likes:I

.field public tags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
