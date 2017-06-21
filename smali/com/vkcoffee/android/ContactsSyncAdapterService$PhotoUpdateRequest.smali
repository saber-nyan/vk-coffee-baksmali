.class Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;
.super Ljava/lang/Object;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoUpdateRequest"
.end annotation


# instance fields
.field cropRect:Landroid/graphics/RectF;

.field data:[B

.field existingID:I

.field photo:Lcom/vkcoffee/android/Photo;

.field uid:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ContactsSyncAdapterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ContactsSyncAdapterService$1;

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/vkcoffee/android/ContactsSyncAdapterService$PhotoUpdateRequest;-><init>()V

    return-void
.end method
