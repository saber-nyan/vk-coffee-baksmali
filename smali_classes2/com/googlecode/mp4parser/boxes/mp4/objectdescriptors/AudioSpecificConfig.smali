.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "AudioSpecificConfig.java"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
    objectTypeIndication = 0x40
    tags = {
        0x5
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;,
        Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$sbr_header;
    }
.end annotation


# static fields
.field public static audioObjectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aacScalefactorDataResilienceFlag:Z

.field public aacSectionDataResilienceFlag:Z

.field public aacSpectralDataResilienceFlag:Z

.field public audioObjectType:I

.field public channelConfiguration:I

.field configBytes:[B

.field public coreCoderDelay:I

.field public dependsOnCoreCoder:I

.field public directMapping:I

.field public eldSpecificConfig:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;

.field public epConfig:I

.field public erHvxcExtensionFlag:I

.field public extensionAudioObjectType:I

.field public extensionChannelConfiguration:I

.field public extensionFlag:I

.field public extensionFlag3:I

.field public extensionSamplingFrequency:I

.field public extensionSamplingFrequencyIndex:I

.field public fillBits:I

.field public frameLengthFlag:I

.field public gaSpecificConfig:Z

.field public hilnContMode:I

.field public hilnEnhaLayer:I

.field public hilnEnhaQuantMode:I

.field public hilnFrameLength:I

.field public hilnMaxNumLine:I

.field public hilnQuantMode:I

.field public hilnSampleRateCode:I

.field public hvxcRateMode:I

.field public hvxcVarMode:I

.field public innerSyncExtensionType:I

.field public isBaseLayer:I

.field public layerNr:I

.field public layer_length:I

.field public numOfSubFrame:I

.field public origExtensionAudioObjectType:I

.field public originalAudioObjectType:I

.field public outerSyncExtensionType:I

.field public paraExtensionFlag:I

.field public paraMode:I

.field public parametricSpecificConfig:Z

.field parsed:Z

.field public psPresentFlag:Z

.field public sacPayloadEmbedding:I

.field public samplingFrequency:I

.field public samplingFrequencyIndex:I

.field public sbrPresentFlag:Z

.field public syncExtensionType:I

.field public var_ScalableFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    .line 290
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x17700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x15888

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xfa00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xbb80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xac44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5dc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5622

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2ee0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AAC main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AAC LC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AAC SSR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AAC LTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SBR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AAC Scalable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "TwinVQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CELP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "HVXC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "(reserved)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "(reserved)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "TTSI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Main synthetic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Wavetable synthesis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "General MIDI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Algorithmic Synthesis and Audio FX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER AAC LC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "(reserved)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER AAC LTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER AAC Scalable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER TwinVQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER BSAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER AAC LD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER CELP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER HVXC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER HILN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER Parametric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SSC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MPEG Surround"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "(escape)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Layer-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Layer-2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Layer-3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "DST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ALS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SLS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SLS non-core"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ER AAC ELD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SMR Simple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SMR Main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 520
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;-><init>()V

    .line 479
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    .line 486
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    .line 487
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->innerSyncExtensionType:I

    .line 488
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parsed:Z

    .line 521
    const/4 v0, 0x5

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->tag:I

    .line 522
    return-void
.end method

.method private gaSpecificConfigSize()I
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "n":I
    add-int/lit8 v0, v0, 0x1

    .line 716
    add-int/lit8 v0, v0, 0x1

    .line 717
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-ne v1, v3, :cond_0

    .line 718
    add-int/lit8 v0, v0, 0xe

    .line 720
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 721
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    if-nez v1, :cond_1

    .line 722
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "can\'t parse program_config_element yet"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 725
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-ne v1, v4, :cond_3

    .line 726
    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 728
    :cond_3
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-ne v1, v3, :cond_7

    .line 729
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_4

    .line 730
    add-int/lit8 v0, v0, 0x5

    .line 731
    add-int/lit8 v0, v0, 0xb

    .line 733
    :cond_4
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_5

    .line 734
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_6

    .line 735
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 736
    add-int/lit8 v0, v0, 0x1

    .line 737
    add-int/lit8 v0, v0, 0x1

    .line 739
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 740
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    if-ne v1, v3, :cond_7

    .line 741
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_7
    return v0
.end method

.method private getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I
    .locals 2
    .param p1, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    .line 1008
    .local v0, "audioObjectType":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 1009
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    .line 1011
    :cond_0
    return v0
.end method

.method private parseErHvxcConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2
    .param p1, "samplingFrequencyIndex"    # I
    .param p2, "channelConfiguration"    # I
    .param p3, "audioObjectType"    # I
    .param p4, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1149
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    .line 1150
    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    .line 1151
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    .line 1153
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    if-ne v0, v1, :cond_0

    .line 1154
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    .line 1156
    :cond_0
    return-void
.end method

.method private parseGaSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 3
    .param p1, "samplingFrequencyIndex"    # I
    .param p2, "channelConfiguration"    # I
    .param p3, "audioObjectType"    # I
    .param p4, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x1

    .line 1019
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    .line 1020
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    .line 1021
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-ne v0, v1, :cond_0

    .line 1022
    const/16 v0, 0xe

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    .line 1024
    :cond_0
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    .line 1025
    if-nez p2, :cond_1

    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t parse program_config_element yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_1
    const/4 v0, 0x6

    if-eq p3, v0, :cond_2

    if-ne p3, v2, :cond_3

    .line 1030
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    .line 1032
    :cond_3
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-ne v0, v1, :cond_7

    .line 1033
    const/16 v0, 0x16

    if-ne p3, v0, :cond_4

    .line 1034
    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    .line 1035
    const/16 v0, 0xb

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    .line 1037
    :cond_4
    const/16 v0, 0x11

    if-eq p3, v0, :cond_5

    const/16 v0, 0x13

    if-eq p3, v0, :cond_5

    .line 1038
    if-eq p3, v2, :cond_5

    const/16 v0, 0x17

    if-ne p3, v0, :cond_6

    .line 1039
    :cond_5
    invoke-virtual {p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:Z

    .line 1040
    invoke-virtual {p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    .line 1041
    invoke-virtual {p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:Z

    .line 1043
    :cond_6
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    .line 1044
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    if-ne v0, v1, :cond_7

    .line 1045
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_7
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    .line 1050
    return-void
.end method

.method private parseHilnConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 1
    .param p1, "samplingFrequencyIndex"    # I
    .param p2, "channelConfiguration"    # I
    .param p3, "audioObjectType"    # I
    .param p4, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    .line 1170
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    .line 1171
    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    .line 1172
    const/16 v0, 0xc

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    .line 1173
    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    .line 1174
    return-void
.end method

.method private parseHilnEnexConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2
    .param p1, "samplingFrequencyIndex"    # I
    .param p2, "channelConfiguration"    # I
    .param p3, "audioObjectType"    # I
    .param p4, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1186
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    .line 1187
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    if-ne v0, v1, :cond_0

    .line 1188
    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    .line 1190
    :cond_0
    return-void
.end method

.method private parseParaConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2
    .param p1, "samplingFrequencyIndex"    # I
    .param p2, "channelConfiguration"    # I
    .param p3, "audioObjectType"    # I
    .param p4, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1124
    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    .line 1126
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eq v0, v1, :cond_0

    .line 1127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseErHvxcConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 1129
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eqz v0, :cond_1

    .line 1130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseHilnConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 1133
    :cond_1
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    .line 1134
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    .line 1135
    return-void
.end method

.method private parseParametricSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2
    .param p1, "samplingFrequencyIndex"    # I
    .param p2, "channelConfiguration"    # I
    .param p3, "audioObjectType"    # I
    .param p4, "in"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1099
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    .line 1100
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    if-ne v0, v1, :cond_0

    .line 1101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseParaConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 1105
    :goto_0
    return-void

    .line 1103
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseHilnEnexConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto :goto_0
.end method

.method private serializeConfigBytes()Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/16 v8, 0x18

    const/16 v7, 0xf

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 820
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getContentSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 821
    .local v1, "out":Ljava/nio/ByteBuffer;
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 822
    .local v0, "bitWriterBuffer":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->originalAudioObjectType:I

    invoke-direct {p0, v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->writeAudioObjectType(ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;)V

    .line 823
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 825
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    if-ne v2, v7, :cond_0

    .line 826
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    invoke-virtual {v0, v2, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 829
    :cond_0
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 831
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v2, v6, :cond_1

    .line 832
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_4

    .line 833
    :cond_1
    iput v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    .line 834
    iput-boolean v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    .line 835
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_2

    .line 836
    iput-boolean v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    .line 838
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 839
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v2, v7, :cond_3

    .line 840
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    invoke-virtual {v0, v2, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 841
    :cond_3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-direct {p0, v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->writeAudioObjectType(ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;)V

    .line 842
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_4

    .line 843
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 845
    :cond_4
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    packed-switch v2, :pswitch_data_0

    .line 936
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    packed-switch v2, :pswitch_data_1

    .line 962
    :cond_5
    :pswitch_1
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    if-ltz v2, :cond_9

    .line 963
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 964
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    const/16 v3, 0x2b7

    if-ne v2, v3, :cond_9

    .line 965
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-direct {p0, v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->writeAudioObjectType(ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;)V

    .line 966
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v2, v6, :cond_7

    .line 967
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBool(Z)V

    .line 968
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v2, :cond_7

    .line 969
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 970
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v2, v7, :cond_6

    .line 971
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    invoke-virtual {v0, v2, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 973
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->innerSyncExtensionType:I

    if-ltz v2, :cond_7

    .line 974
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->innerSyncExtensionType:I

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 975
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v3, 0x548

    if-ne v2, v3, :cond_7

    .line 976
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBool(Z)V

    .line 981
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_9

    .line 982
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBool(Z)V

    .line 983
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v2, :cond_8

    .line 984
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 985
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v2, v7, :cond_8

    .line 986
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    invoke-virtual {v0, v2, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 989
    :cond_8
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 994
    :cond_9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v2

    .line 858
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->writeGaSpecificConfig(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;)V

    goto :goto_0

    .line 862
    :pswitch_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write CelpSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :pswitch_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write HvxcSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 870
    :pswitch_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write TTSSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 877
    :pswitch_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write StructuredAudioSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 881
    :pswitch_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write ErrorResilientCelpSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :pswitch_8
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write ErrorResilientHvxcSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 890
    :pswitch_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write parseParametricSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    :pswitch_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write SSCSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 899
    :pswitch_b
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    invoke-virtual {v0, v2, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 900
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write SpatialSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 906
    :pswitch_c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write MPEG_1_2_SpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 910
    :pswitch_d
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write DSTSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :pswitch_e
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    invoke-virtual {v0, v2, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 915
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write ALSSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :pswitch_f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write SLSSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 924
    :pswitch_10
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t write ELDSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :pswitch_11
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse SymbolicMusicSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 948
    :pswitch_12
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 949
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 950
    :cond_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse ErrorProtectionSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    :cond_b
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 954
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    invoke-virtual {v0, v2, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 955
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-nez v2, :cond_5

    .line 957
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 936
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_12
        :pswitch_1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
    .end packed-switch
.end method

.method private writeAudioObjectType(ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;)V
    .locals 2
    .param p1, "audioObjectType"    # I
    .param p2, "bitWriterBuffer"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    .prologue
    const/4 v1, 0x5

    .line 998
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 999
    const/16 v0, 0x1f

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1000
    add-int/lit8 v0, p1, -0x20

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-virtual {p2, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    goto :goto_0
.end method

.method private writeGaSpecificConfig(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;)V
    .locals 4
    .param p1, "out"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    .line 1057
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    invoke-virtual {p1, v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1058
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    invoke-virtual {p1, v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1059
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-ne v0, v2, :cond_0

    .line 1060
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1062
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    invoke-virtual {p1, v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1063
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    if-nez v0, :cond_1

    .line 1064
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t parse program_config_element yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-ne v0, v3, :cond_3

    .line 1068
    :cond_2
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1070
    :cond_3
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-ne v0, v2, :cond_7

    .line 1071
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    .line 1072
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1073
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1075
    :cond_4
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_5

    .line 1076
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_6

    .line 1077
    :cond_5
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:Z

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBool(Z)V

    .line 1078
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBool(Z)V

    .line 1079
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:Z

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBool(Z)V

    .line 1081
    :cond_6
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    invoke-virtual {p1, v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 1082
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    if-ne v0, v2, :cond_7

    .line 1083
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1293
    if-ne p0, p1, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return v1

    .line 1296
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1297
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1300
    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .line 1302
    .local v0, "that":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1303
    goto :goto_0

    .line 1305
    :cond_4
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 1306
    goto :goto_0

    .line 1308
    :cond_5
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 1309
    goto :goto_0

    .line 1311
    :cond_6
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 1312
    goto :goto_0

    .line 1314
    :cond_7
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 1315
    goto :goto_0

    .line 1317
    :cond_8
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 1318
    goto :goto_0

    .line 1320
    :cond_9
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 1321
    goto :goto_0

    .line 1323
    :cond_a
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 1324
    goto :goto_0

    .line 1326
    :cond_b
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 1327
    goto :goto_0

    .line 1329
    :cond_c
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 1330
    goto :goto_0

    .line 1332
    :cond_d
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 1333
    goto :goto_0

    .line 1335
    :cond_e
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    if-eq v3, v4, :cond_f

    move v1, v2

    .line 1336
    goto :goto_0

    .line 1338
    :cond_f
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-eq v3, v4, :cond_10

    move v1, v2

    .line 1339
    goto :goto_0

    .line 1341
    :cond_10
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 1342
    goto/16 :goto_0

    .line 1344
    :cond_11
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    if-eq v3, v4, :cond_12

    move v1, v2

    .line 1345
    goto/16 :goto_0

    .line 1347
    :cond_12
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-eq v3, v4, :cond_13

    move v1, v2

    .line 1348
    goto/16 :goto_0

    .line 1350
    :cond_13
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    if-eq v3, v4, :cond_14

    move v1, v2

    .line 1351
    goto/16 :goto_0

    .line 1353
    :cond_14
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 1354
    goto/16 :goto_0

    .line 1356
    :cond_15
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eq v3, v4, :cond_16

    move v1, v2

    .line 1357
    goto/16 :goto_0

    .line 1359
    :cond_16
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    if-eq v3, v4, :cond_17

    move v1, v2

    .line 1360
    goto/16 :goto_0

    .line 1362
    :cond_17
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    if-eq v3, v4, :cond_18

    move v1, v2

    .line 1363
    goto/16 :goto_0

    .line 1365
    :cond_18
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    if-eq v3, v4, :cond_19

    move v1, v2

    .line 1366
    goto/16 :goto_0

    .line 1368
    :cond_19
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 1369
    goto/16 :goto_0

    .line 1371
    :cond_1a
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    if-eq v3, v4, :cond_1b

    move v1, v2

    .line 1372
    goto/16 :goto_0

    .line 1374
    :cond_1b
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    if-eq v3, v4, :cond_1c

    move v1, v2

    .line 1375
    goto/16 :goto_0

    .line 1377
    :cond_1c
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    if-eq v3, v4, :cond_1d

    move v1, v2

    .line 1378
    goto/16 :goto_0

    .line 1380
    :cond_1d
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 1381
    goto/16 :goto_0

    .line 1383
    :cond_1e
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    if-eq v3, v4, :cond_1f

    move v1, v2

    .line 1384
    goto/16 :goto_0

    .line 1386
    :cond_1f
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 1387
    goto/16 :goto_0

    .line 1389
    :cond_20
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    if-eq v3, v4, :cond_21

    move v1, v2

    .line 1390
    goto/16 :goto_0

    .line 1392
    :cond_21
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    if-eq v3, v4, :cond_22

    move v1, v2

    .line 1393
    goto/16 :goto_0

    .line 1395
    :cond_22
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    if-eq v3, v4, :cond_23

    move v1, v2

    .line 1396
    goto/16 :goto_0

    .line 1398
    :cond_23
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    if-eq v3, v4, :cond_24

    move v1, v2

    .line 1399
    goto/16 :goto_0

    .line 1401
    :cond_24
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eq v3, v4, :cond_25

    move v1, v2

    .line 1402
    goto/16 :goto_0

    .line 1404
    :cond_25
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eq v3, v4, :cond_26

    move v1, v2

    .line 1405
    goto/16 :goto_0

    .line 1407
    :cond_26
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    if-eq v3, v4, :cond_27

    move v1, v2

    .line 1408
    goto/16 :goto_0

    .line 1410
    :cond_27
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    if-eq v3, v4, :cond_28

    move v1, v2

    .line 1411
    goto/16 :goto_0

    .line 1413
    :cond_28
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    if-eq v3, v4, :cond_29

    move v1, v2

    .line 1414
    goto/16 :goto_0

    .line 1416
    :cond_29
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    if-eq v3, v4, :cond_2a

    move v1, v2

    .line 1417
    goto/16 :goto_0

    .line 1419
    :cond_2a
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    iget-boolean v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eq v3, v4, :cond_2b

    move v1, v2

    .line 1420
    goto/16 :goto_0

    .line 1422
    :cond_2b
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    if-eq v3, v4, :cond_2c

    move v1, v2

    .line 1423
    goto/16 :goto_0

    .line 1425
    :cond_2c
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    if-eq v3, v4, :cond_2d

    move v1, v2

    .line 1426
    goto/16 :goto_0

    .line 1428
    :cond_2d
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1429
    goto/16 :goto_0
.end method

.method public getAudioObjectType()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    return v0
.end method

.method public getConfigBytes()[B
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializeConfigBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method getContentSize()I
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/16 v5, 0x16

    const/4 v4, 0x5

    const/16 v3, 0xf

    .line 748
    const/4 v0, 0x5

    .line 749
    .local v0, "sizeInBits":I
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->originalAudioObjectType:I

    if-le v1, v6, :cond_0

    .line 750
    add-int/lit8 v0, v0, 0x6

    .line 752
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 753
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    if-ne v1, v3, :cond_1

    .line 754
    add-int/lit8 v0, v0, 0x18

    .line 756
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 757
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v1, v4, :cond_2

    .line 758
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_3

    .line 759
    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 760
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_3

    .line 762
    add-int/lit8 v0, v0, 0x18

    .line 766
    :cond_3
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-ne v1, v5, :cond_4

    .line 767
    add-int/lit8 v0, v0, 0x4

    .line 771
    :cond_4
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eqz v1, :cond_5

    .line 772
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfigSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_5
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    if-ltz v1, :cond_a

    .line 775
    add-int/lit8 v0, v0, 0xb

    .line 776
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    const/16 v2, 0x2b7

    if-ne v1, v2, :cond_a

    .line 777
    add-int/lit8 v0, v0, 0x5

    .line 778
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-le v1, v6, :cond_6

    .line 779
    add-int/lit8 v0, v0, 0x6

    .line 781
    :cond_6
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v1, v4, :cond_8

    .line 782
    add-int/lit8 v0, v0, 0x1

    .line 783
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v1, :cond_8

    .line 784
    add-int/lit8 v0, v0, 0x4

    .line 785
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_7

    .line 786
    add-int/lit8 v0, v0, 0x18

    .line 788
    :cond_7
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->innerSyncExtensionType:I

    if-ltz v1, :cond_8

    .line 789
    add-int/lit8 v0, v0, 0xb

    .line 790
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->innerSyncExtensionType:I

    const/16 v2, 0x548

    if-ne v1, v2, :cond_8

    .line 791
    add-int/lit8 v0, v0, 0x1

    .line 796
    :cond_8
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v1, v5, :cond_a

    .line 797
    add-int/lit8 v0, v0, 0x1

    .line 798
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v1, :cond_9

    .line 799
    add-int/lit8 v0, v0, 0x4

    .line 800
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_9

    .line 801
    add-int/lit8 v0, v0, 0x18

    .line 804
    :cond_9
    add-int/lit8 v0, v0, 0x4

    .line 808
    :cond_a
    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    return v1
.end method

.method public getExtensionAudioObjectType()I
    .locals 1

    .prologue
    .line 1209
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    return v0
.end method

.method public getExtensionSamplingFrequency()I
    .locals 2

    .prologue
    .line 1276
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSamplingFrequency()I
    .locals 2

    .prologue
    .line 1272
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1437
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 1438
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    add-int v0, v2, v4

    .line 1439
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    add-int v0, v2, v4

    .line 1440
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    add-int v0, v2, v4

    .line 1441
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    add-int v0, v2, v4

    .line 1442
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    add-int v0, v2, v4

    .line 1443
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1444
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1445
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    add-int v0, v2, v4

    .line 1446
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    add-int v0, v2, v4

    .line 1447
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    add-int v0, v2, v4

    .line 1448
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    add-int v0, v2, v4

    .line 1449
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    add-int v0, v2, v4

    .line 1450
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    add-int v0, v2, v4

    .line 1451
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    add-int v0, v2, v4

    .line 1452
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    add-int v0, v2, v4

    .line 1453
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    add-int v0, v2, v4

    .line 1454
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    add-int v0, v2, v4

    .line 1455
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    add-int v0, v2, v4

    .line 1456
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    add-int v0, v2, v4

    .line 1457
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    add-int v0, v2, v4

    .line 1458
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    add-int v0, v2, v4

    .line 1459
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    add-int v0, v2, v4

    .line 1460
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1461
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1462
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1463
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    add-int v0, v2, v4

    .line 1464
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1465
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    add-int v0, v2, v4

    .line 1466
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    add-int v0, v2, v4

    .line 1467
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    add-int v0, v2, v4

    .line 1468
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    add-int v0, v2, v4

    .line 1469
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    add-int v0, v2, v4

    .line 1470
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    add-int v0, v2, v4

    .line 1471
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    add-int v0, v2, v4

    .line 1472
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    add-int v0, v2, v4

    .line 1473
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    add-int v0, v2, v4

    .line 1474
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    add-int v0, v2, v4

    .line 1475
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    add-int v0, v2, v4

    .line 1476
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    add-int v0, v2, v4

    .line 1477
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    add-int v0, v2, v4

    .line 1478
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    add-int v0, v2, v4

    .line 1479
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eqz v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 1480
    return v0

    .end local v0    # "result":I
    :cond_0
    move v0, v1

    .line 1437
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_1
    move v2, v1

    .line 1443
    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 1444
    goto/16 :goto_2

    :cond_3
    move v2, v1

    .line 1460
    goto/16 :goto_3

    :cond_4
    move v2, v1

    .line 1461
    goto/16 :goto_4

    :cond_5
    move v2, v1

    .line 1462
    goto :goto_5

    :cond_6
    move v2, v1

    .line 1464
    goto :goto_6

    :cond_7
    move v3, v1

    .line 1479
    goto :goto_7
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x18

    const/16 v8, 0xf

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 528
    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parsed:Z

    .line 529
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 530
    .local v1, "configBytes":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sizeOfInstance:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 531
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sizeOfInstance:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sizeOfInstance:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    .line 535
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 536
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 538
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 539
    .local v0, "bitReaderBuffer":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->originalAudioObjectType:I

    .line 540
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    .line 542
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    if-ne v2, v8, :cond_0

    .line 543
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    .line 546
    :cond_0
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    .line 548
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v2, v7, :cond_1

    .line 549
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_a

    .line 550
    :cond_1
    iput v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    .line 551
    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    .line 552
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_2

    .line 553
    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    .line 555
    :cond_2
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    .line 556
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v2, v8, :cond_3

    .line 557
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 558
    :cond_3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    .line 559
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_4

    .line 560
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    .line 565
    :cond_4
    :goto_0
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    packed-switch v2, :pswitch_data_0

    .line 654
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    packed-switch v2, :pswitch_data_1

    .line 680
    :cond_5
    :pswitch_1
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-eq v2, v7, :cond_9

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->remainingBits()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_9

    .line 681
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->outerSyncExtensionType:I

    .line 682
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v3, 0x2b7

    if-ne v2, v3, :cond_9

    .line 683
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    .line 684
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v2, v7, :cond_7

    .line 685
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    .line 686
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v2, :cond_7

    .line 687
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    .line 688
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v2, v8, :cond_6

    .line 689
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 691
    :cond_6
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->remainingBits()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_7

    .line 692
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->innerSyncExtensionType:I

    .line 693
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v3, 0x548

    if-ne v2, v3, :cond_7

    .line 694
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    .line 699
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_9

    .line 700
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    .line 701
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    if-eqz v2, :cond_8

    .line 702
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    .line 703
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v2, v8, :cond_8

    .line 704
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 707
    :cond_8
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    .line 711
    :cond_9
    return-void

    .line 562
    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    goto/16 :goto_0

    .line 578
    :pswitch_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseGaSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto/16 :goto_1

    .line 582
    :pswitch_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse CelpSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    :pswitch_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse HvxcSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :pswitch_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse TTSSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :pswitch_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse StructuredAudioSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :pswitch_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse ErrorResilientCelpSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :pswitch_8
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse ErrorResilientHvxcSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :pswitch_9
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseParametricSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto/16 :goto_1

    .line 614
    :pswitch_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse SSCSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :pswitch_b
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    .line 619
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse SpatialSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :pswitch_c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse MPEG_1_2_SpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    :pswitch_d
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse DSTSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :pswitch_e
    invoke-virtual {v0, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    .line 634
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse ALSSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :pswitch_f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse SLSSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :pswitch_10
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-direct {v2, p0, v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;-><init>(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    iput-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->eldSpecificConfig:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;

    goto/16 :goto_1

    .line 647
    :pswitch_11
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse SymbolicMusicSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :pswitch_12
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    .line 667
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 668
    :cond_b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "can\'t parse ErrorProtectionSpecificConfig yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    :cond_c
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 672
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    .line 673
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-nez v2, :cond_5

    .line 675
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 654
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_12
        :pswitch_1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
    .end packed-switch
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 813
    .local v0, "out":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->tag:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 814
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getContentSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->writeSize(Ljava/nio/ByteBuffer;I)V

    .line 815
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializeConfigBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 816
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public setAudioObjectType(I)V
    .locals 0
    .param p1, "audioObjectType"    # I

    .prologue
    .line 1201
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    .line 1202
    return-void
.end method

.method public setChannelConfiguration(I)V
    .locals 0
    .param p1, "channelConfiguration"    # I

    .prologue
    .line 1288
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    .line 1289
    return-void
.end method

.method public setOriginalAudioObjectType(I)V
    .locals 0
    .param p1, "originalAudioObjectType"    # I

    .prologue
    .line 1205
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->originalAudioObjectType:I

    .line 1206
    return-void
.end method

.method public setSamplingFrequency(I)V
    .locals 0
    .param p1, "samplingFrequency"    # I

    .prologue
    .line 1280
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    .line 1281
    return-void
.end method

.method public setSamplingFrequencyIndex(I)V
    .locals 0
    .param p1, "samplingFrequencyIndex"    # I

    .prologue
    .line 1213
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    .line 1214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AudioSpecificConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    const-string/jumbo v1, "{configBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const-string/jumbo v1, ", audioObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const-string/jumbo v1, ", samplingFrequencyIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string/jumbo v1, ", samplingFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1224
    const-string/jumbo v1, ", channelConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-lez v1, :cond_0

    .line 1226
    const-string/jumbo v1, ", extensionAudioObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string/jumbo v1, ", sbrPresentFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1228
    const-string/jumbo v1, ", psPresentFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1229
    const-string/jumbo v1, ", extensionSamplingFrequencyIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string/jumbo v1, ", extensionSamplingFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1231
    const-string/jumbo v1, ", extensionChannelConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1237
    :cond_0
    const-string/jumbo v1, ", syncExtensionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1238
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eqz v1, :cond_1

    .line 1239
    const-string/jumbo v1, ", frameLengthFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1240
    const-string/jumbo v1, ", dependsOnCoreCoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1241
    const-string/jumbo v1, ", coreCoderDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1242
    const-string/jumbo v1, ", extensionFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1243
    const-string/jumbo v1, ", layerNr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1244
    const-string/jumbo v1, ", numOfSubFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1245
    const-string/jumbo v1, ", layer_length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1246
    const-string/jumbo v1, ", aacSectionDataResilienceFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1247
    const-string/jumbo v1, ", aacScalefactorDataResilienceFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1248
    const-string/jumbo v1, ", aacSpectralDataResilienceFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1249
    const-string/jumbo v1, ", extensionFlag3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1251
    :cond_1
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eqz v1, :cond_2

    .line 1252
    const-string/jumbo v1, ", isBaseLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1253
    const-string/jumbo v1, ", paraMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    const-string/jumbo v1, ", paraExtensionFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1255
    const-string/jumbo v1, ", hvxcVarMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1256
    const-string/jumbo v1, ", hvxcRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1257
    const-string/jumbo v1, ", erHvxcExtensionFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1258
    const-string/jumbo v1, ", var_ScalableFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1259
    const-string/jumbo v1, ", hilnQuantMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1260
    const-string/jumbo v1, ", hilnMaxNumLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1261
    const-string/jumbo v1, ", hilnSampleRateCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1262
    const-string/jumbo v1, ", hilnFrameLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1263
    const-string/jumbo v1, ", hilnContMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1264
    const-string/jumbo v1, ", hilnEnhaLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1265
    const-string/jumbo v1, ", hilnEnhaQuantMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
