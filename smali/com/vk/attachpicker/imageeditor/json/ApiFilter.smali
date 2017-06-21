.class public Lcom/vk/attachpicker/imageeditor/json/ApiFilter;
.super Ljava/lang/Object;
.source "ApiFilter.java"


# static fields
.field public static final DEFAULT_BRIGHTNESS:F

.field public static final DEFAULT_CONTRAST:F

.field public static final DEFAULT_ENHANCE:F

.field public static final DEFAULT_FADE:F

.field public static final DEFAULT_SATURATION:F

.field public static final DEFAULT_TEMPERATURE:F

.field public static final DEFAULT_TINT:F


# instance fields
.field public final blueCurve:[I

.field public final brightness:F

.field public final colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;"
        }
    .end annotation
.end field

.field public final contrast:F

.field public final enhance:F

.field public final fade:F

.field public final greenCurve:[I

.field public final redCurve:[I

.field public final rgbCurve:[I

.field public final saturation:F

.field public final temperature:F

.field public final tint:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    .line 32
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->enhance:F

    .line 33
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->brightness:F

    .line 34
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->contrast:F

    .line 35
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->saturation:F

    .line 36
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->fade:F

    .line 37
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->temperature:F

    .line 38
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->tint:F

    .line 39
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->redCurve:[I

    .line 40
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->greenCurve:[I

    .line 41
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->blueCurve:[I

    .line 42
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->rgbCurve:[I

    .line 43
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
    .end array-data

    .line 41
    :array_2
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
    .end array-data

    .line 42
    :array_3
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
    .end array-data
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "jo":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .restart local p1    # "jo":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "enh"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->enhance:F

    .line 50
    const-string/jumbo v0, "br"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->brightness:F

    .line 51
    const-string/jumbo v0, "con"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->contrast:F

    .line 52
    const-string/jumbo v0, "sat"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->saturation:F

    .line 53
    const-string/jumbo v0, "fade"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->fade:F

    .line 54
    const-string/jumbo v0, "tem"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->temperature:F

    .line 55
    const-string/jumbo v0, "tint"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->tint:F

    .line 56
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->optColorsFronJson(Lorg/json/JSONObject;)V

    .line 57
    const-string/jumbo v0, "red_curve"

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->optCurveFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->redCurve:[I

    .line 58
    const-string/jumbo v0, "green_curve"

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->optCurveFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->greenCurve:[I

    .line 59
    const-string/jumbo v0, "blue_curve"

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->optCurveFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->blueCurve:[I

    .line 60
    const-string/jumbo v0, "rgb_curve"

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->optCurveFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->rgbCurve:[I

    .line 61
    return-void
.end method

.method private optColorsFronJson(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    const-string/jumbo v2, "col"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 79
    .local v1, "ja":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    new-instance v3, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private optCurveFromJson(Lorg/json/JSONObject;Ljava/lang/String;)[I
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 65
    .local v0, "ja":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 66
    :cond_0
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 73
    :goto_0
    return-object v1

    .line 68
    :cond_1
    new-array v1, v2, [I

    .line 69
    invoke-virtual {v0, v3, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    aput v2, v1, v3

    const/16 v2, 0x40

    .line 70
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0x80

    .line 71
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    aput v2, v1, v5

    const/16 v2, 0xc0

    .line 72
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    aput v2, v1, v6

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0xff

    .line 73
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 66
    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
    .end array-data
.end method
