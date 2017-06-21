.class Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/String;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

.field final synthetic val$onClickListener:Lcom/flask/colorpicker/builder/ColorPickerClickListener;


# direct methods
.method constructor <init>(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    iput-object p2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->val$onClickListener:Lcom/flask/colorpicker/builder/ColorPickerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    invoke-static {v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->access$000(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;)Lcom/flask/colorpicker/ColorPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v1

    .line 87
    .local v1, "selectedColor":I
    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    invoke-static {v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->access$000(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;)Lcom/flask/colorpicker/ColorPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorPickerView;->getAllColors()[Ljava/lang/Integer;

    move-result-object v0

    .line 88
    .local v0, "allColors":[Ljava/lang/Integer;
    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->val$onClickListener:Lcom/flask/colorpicker/builder/ColorPickerClickListener;

    invoke-interface {v2, p1, v1, v0}, Lcom/flask/colorpicker/builder/ColorPickerClickListener;->onClick(Landroid/content/DialogInterface;I[Ljava/lang/Integer;)V

    .line 89
    return-void
.end method
