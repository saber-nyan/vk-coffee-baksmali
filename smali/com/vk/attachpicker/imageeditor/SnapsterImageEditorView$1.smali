.class Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;
.super Ljava/lang/Object;
.source "SnapsterImageEditorView.java"

# interfaces
.implements Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender(Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

.field final synthetic val$renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;->this$0:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    iput-object p2, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;->val$renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;->val$renderCallback:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    invoke-interface {v0}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;->onRender()V

    .line 46
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;->this$0:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-static {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->access$000(Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;)Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->setRenderCallback(Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V

    .line 47
    return-void
.end method
