.class public Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;
.super Ljava/lang/Object;
.source "DurationStaticLayouts.java"


# static fields
.field private static final durationPaint:Landroid/text/TextPaint;

.field private static final layoutWidth:I

.field private static final layouts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->durationPaint:Landroid/text/TextPaint;

    .line 15
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->layoutWidth:I

    .line 17
    sget-object v0, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->durationPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 18
    sget-object v0, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->durationPaint:Landroid/text/TextPaint;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->sp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->layouts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Landroid/text/StaticLayout;
    .locals 8
    .param p0, "duration"    # I

    .prologue
    .line 24
    sget-object v1, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->layouts:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    .line 25
    .local v0, "layout":Landroid/text/StaticLayout;
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/text/StaticLayout;

    .end local v0    # "layout":Landroid/text/StaticLayout;
    invoke-static {p0}, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->stringDuration(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->durationPaint:Landroid/text/TextPaint;

    sget v3, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->layoutWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 27
    .restart local v0    # "layout":Landroid/text/StaticLayout;
    sget-object v1, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->layouts:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-object v0
.end method

.method private static stringDuration(I)Ljava/lang/String;
    .locals 10
    .param p0, "duration"    # I

    .prologue
    const-wide/16 v8, 0x3c

    .line 33
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v0, v2

    .line 34
    .local v0, "absSeconds":J
    const-string/jumbo v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0xe10

    rem-long v6, v0, v6

    div-long/2addr v6, v8

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-long v6, v0, v8

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 34
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
