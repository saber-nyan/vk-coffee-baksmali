.class public final enum Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
.super Ljava/lang/Enum;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flask/colorpicker/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WHEEL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

.field public static final enum CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

.field public static final enum FLOWER:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    new-instance v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    const-string/jumbo v1, "FLOWER"

    invoke-direct {v0, v1, v2}, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->FLOWER:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    new-instance v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    const-string/jumbo v1, "CIRCLE"

    invoke-direct {v0, v1, v3}, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .line 367
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    sget-object v1, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->FLOWER:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->$VALUES:[Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static indexOf(I)Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 371
    packed-switch p0, :pswitch_data_0

    .line 377
    sget-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->FLOWER:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    :goto_0
    return-object v0

    .line 373
    :pswitch_0
    sget-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->FLOWER:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    goto :goto_0

    .line 375
    :pswitch_1
    sget-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const-class v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->$VALUES:[Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    invoke-virtual {v0}, [Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    return-object v0
.end method
