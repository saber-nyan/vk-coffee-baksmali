.class public Lcom/vkcoffee/android/api/wall/WallGet$Result;
.super Ljava/lang/Object;
.source "WallGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/wall/WallGet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public news:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public postponedCount:I

.field public status:Ljava/lang/Object;

.field public suggestedCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
