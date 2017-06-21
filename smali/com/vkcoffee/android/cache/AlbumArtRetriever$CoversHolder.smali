.class Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/AlbumArtRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoversHolder"
.end annotation


# instance fields
.field aid:I

.field blur:Landroid/graphics/Bitmap;

.field full:Landroid/graphics/Bitmap;

.field oid:I

.field small:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/cache/AlbumArtRetriever$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/cache/AlbumArtRetriever$1;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/vkcoffee/android/cache/AlbumArtRetriever$CoversHolder;-><init>()V

    return-void
.end method
