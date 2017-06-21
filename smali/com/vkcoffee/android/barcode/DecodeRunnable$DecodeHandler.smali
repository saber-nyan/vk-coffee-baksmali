.class final Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/barcode/DecodeRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodeHandler"
.end annotation


# instance fields
.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/barcode/DecodeRunnable;)V
    .locals 5

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->hints:Ljava/util/Map;

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->hints:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    aput-object v4, v2, v3

    .line 111
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method private decode([B)V
    .locals 15
    .param p1, "data"    # [B

    .prologue
    .line 147
    const/4 v14, 0x0

    .line 151
    .local v14, "rawResult":Lcom/google/zxing/Result;
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$500(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v2}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$600(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 152
    .local v6, "subtendedWidth":I
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$500(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v2}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$600(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 153
    .local v7, "subtendedHeight":I
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$500(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v1

    sub-int v11, v1, v6

    .line 154
    .local v11, "excessWidth":I
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$600(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v1

    sub-int v10, v1, v7

    .line 157
    .local v10, "excessHeight":I
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .line 159
    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$500(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v2

    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$600(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I

    move-result v3

    div-int/lit8 v4, v11, 0x2

    div-int/lit8 v5, v10, 0x2

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 163
    .local v0, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    new-instance v9, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v9, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 165
    .local v9, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->hints:Ljava/util/Map;

    invoke-virtual {v1, v9, v2}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$700(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/os/Handler;

    move-result-object v12

    .line 174
    .local v12, "handler":Landroid/os/Handler;
    if-nez v14, :cond_0

    .line 175
    const v1, 0x7f100016

    invoke-virtual {v12, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 180
    .local v13, "message":Landroid/os/Message;
    :goto_1
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 181
    return-void

    .line 177
    .end local v13    # "message":Landroid/os/Message;
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decode succeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const v1, 0x7f100018

    invoke-virtual {v12, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .restart local v13    # "message":Landroid/os/Message;
    goto :goto_1

    .line 166
    .end local v12    # "handler":Landroid/os/Handler;
    .end local v13    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$000(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 125
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->decode([B)V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$100(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 122
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$100(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v2}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$200(Lcom/vkcoffee/android/barcode/DecodeRunnable;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 128
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    .line 129
    .local v0, "result":Lcom/google/zxing/Result;
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$400(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler$1;-><init>(Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;Lcom/google/zxing/Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 137
    .end local v0    # "result":Lcom/google/zxing/Result;
    :sswitch_3
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$100(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-static {v2}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$200(Lcom/vkcoffee/android/barcode/DecodeRunnable;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 140
    :sswitch_4
    iget-object v1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;->this$0:Lcom/vkcoffee/android/barcode/DecodeRunnable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->access$002(Lcom/vkcoffee/android/barcode/DecodeRunnable;Z)Z

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100015 -> :sswitch_0
        0x7f100016 -> :sswitch_3
        0x7f100017 -> :sswitch_1
        0x7f100018 -> :sswitch_2
        0x7f100064 -> :sswitch_4
    .end sparse-switch
.end method
