.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;
.super Ljava/lang/Object;
.source "AudioSpecificConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ELDSpecificConfig"
.end annotation


# static fields
.field private static final ELDEXT_TERM:I


# instance fields
.field public aacScalefactorDataResilienceFlag:Z

.field public aacSectionDataResilienceFlag:Z

.field public aacSpectralDataResilienceFlag:Z

.field public frameLengthFlag:Z

.field public ldSbrCrcFlag:Z

.field public ldSbrPresentFlag:Z

.field public ldSbrSamplingRate:Z

.field final synthetic this$0:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 9
    .param p2, "channelConfiguration"    # I
    .param p3, "bitReaderBuffer"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    .line 1493
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->this$0:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->frameLengthFlag:Z

    .line 1496
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->aacSectionDataResilienceFlag:Z

    .line 1497
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->aacScalefactorDataResilienceFlag:Z

    .line 1498
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->aacSpectralDataResilienceFlag:Z

    .line 1500
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->ldSbrPresentFlag:Z

    .line 1501
    iget-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->ldSbrPresentFlag:Z

    if-eqz v6, :cond_0

    .line 1502
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->ldSbrSamplingRate:Z

    .line 1503
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->ldSbrCrcFlag:Z

    .line 1504
    invoke-virtual {p0, p2, p3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->ld_sbr_header(ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 1507
    :cond_0
    invoke-virtual {p3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    .local v4, "eldExtType":I
    if-nez v4, :cond_1

    .line 1529
    return-void

    .line 1508
    :cond_1
    invoke-virtual {p3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    .line 1509
    .local v1, "eldExtLen":I
    move v5, v1

    .line 1510
    .local v5, "len":I
    const/4 v2, 0x0

    .line 1511
    .local v2, "eldExtLenAdd":I
    const/16 v6, 0xf

    if-ne v1, v6, :cond_2

    .line 1512
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    .line 1513
    add-int/2addr v5, v2

    .line 1515
    :cond_2
    const/16 v6, 0xff

    if-ne v2, v6, :cond_3

    .line 1516
    const/16 v6, 0x10

    invoke-virtual {p3, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    .line 1517
    .local v3, "eldExtLenAddAdd":I
    add-int/2addr v5, v3

    .line 1522
    .end local v3    # "eldExtLenAddAdd":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 1523
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ld_sbr_header(ILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 4
    .param p1, "channelConfiguration"    # I
    .param p2, "bitReaderBuffer"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    .prologue
    .line 1533
    packed-switch p1, :pswitch_data_0

    .line 1550
    const/4 v1, 0x0

    .line 1553
    .local v1, "numSbrHeader":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "el":I
    :goto_1
    if-lt v0, v1, :cond_0

    .line 1556
    return-void

    .line 1536
    .end local v0    # "el":I
    .end local v1    # "numSbrHeader":I
    :pswitch_0
    const/4 v1, 0x1

    .line 1537
    .restart local v1    # "numSbrHeader":I
    goto :goto_0

    .line 1539
    .end local v1    # "numSbrHeader":I
    :pswitch_1
    const/4 v1, 0x2

    .line 1540
    .restart local v1    # "numSbrHeader":I
    goto :goto_0

    .line 1544
    .end local v1    # "numSbrHeader":I
    :pswitch_2
    const/4 v1, 0x3

    .line 1545
    .restart local v1    # "numSbrHeader":I
    goto :goto_0

    .line 1547
    .end local v1    # "numSbrHeader":I
    :pswitch_3
    const/4 v1, 0x4

    .line 1548
    .restart local v1    # "numSbrHeader":I
    goto :goto_0

    .line 1554
    .restart local v0    # "el":I
    :cond_0
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$sbr_header;

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$ELDSpecificConfig;->this$0:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v2, v3, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig$sbr_header;-><init>(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
