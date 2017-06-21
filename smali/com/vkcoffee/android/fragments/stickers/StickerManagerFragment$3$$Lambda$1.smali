.class final synthetic Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;

.field private final arg$2:I

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;

    iput p2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;->arg$2:I

    iput p3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;II)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;II)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;

    iget v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;->arg$2:I

    iget v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3$$Lambda$1;->arg$3:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;->lambda$fail$608(II)V

    return-void
.end method
