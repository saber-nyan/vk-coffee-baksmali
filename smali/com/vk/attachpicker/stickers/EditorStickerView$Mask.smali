.class Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;
.super Ljava/lang/Object;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mask"
.end annotation


# instance fields
.field public final id:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;->url:Ljava/lang/String;

    .line 517
    iput p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Mask;->id:I

    .line 518
    return-void
.end method
