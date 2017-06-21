.class Lcom/vk/attachpicker/stickers/EditorStickerView$2;
.super Ljava/lang/Object;
.source "EditorStickerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/stickers/EditorStickerView;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$2;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$2;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->checkSelection()V

    .line 100
    return-void
.end method
