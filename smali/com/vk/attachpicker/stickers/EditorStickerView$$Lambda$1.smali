.class final synthetic Lcom/vk/attachpicker/stickers/EditorStickerView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/stickers/EditorStickerView;)Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/stickers/EditorStickerView$$Lambda$1;-><init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V

    return-object v0
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->lambda$new$138(I)V

    return-void
.end method
