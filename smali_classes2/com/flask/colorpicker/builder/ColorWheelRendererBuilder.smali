.class public Lcom/flask/colorpicker/builder/ColorWheelRendererBuilder;
.super Ljava/lang/Object;
.source "ColorWheelRendererBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getRenderer(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/renderer/ColorWheelRenderer;
    .locals 2
    .param p0, "wheelType"    # Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .prologue
    .line 10
    sget-object v0, Lcom/flask/colorpicker/builder/ColorWheelRendererBuilder$1;->$SwitchMap$com$flask$colorpicker$ColorPickerView$WHEEL_TYPE:[I

    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong WHEEL_TYPE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_0
    new-instance v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;

    invoke-direct {v0}, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;-><init>()V

    .line 14
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;

    invoke-direct {v0}, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
