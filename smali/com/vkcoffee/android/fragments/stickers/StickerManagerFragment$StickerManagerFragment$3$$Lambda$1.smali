.class public Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;
.super Ljava/lang/Object;
.source "StickerManagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerManagerFragment$3$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

.field private final arg$2:I

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;II)V
    .locals 0
    .param p1, "anonymousClass3"    # Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    .line 471
    iput p2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->arg$2:I

    .line 472
    iput p3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->arg$3:I

    .line 473
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;II)Ljava/lang/Runnable;
    .locals 1
    .param p0, "anonymousClass3"    # Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 476
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;II)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->arg$2:I

    iget v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;->arg$3:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->lambda$fail$608(II)V

    .line 481
    return-void
.end method
