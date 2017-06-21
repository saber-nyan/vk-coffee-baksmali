.class public Lcom/vk/attachpicker/util/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final DEBUG_ENABLED:Z = false

.field private static final DEFAULT_LOG_TAG:Ljava/lang/String; = "AttachPicker"

.field private static final NULL:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 19
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 25
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 43
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 49
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 67
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 73
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    return-void
.end method

.method public static logBigString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "toLog"    # Ljava/lang/String;

    .prologue
    .line 88
    const/16 v0, 0x7d0

    .line 89
    .local v0, "chunkSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_1

    .line 90
    const-string/jumbo v2, "<Start>"

    invoke-static {p0, v2}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v3, v1, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    add-int/lit16 v1, v1, 0x7d0

    goto :goto_0

    .line 94
    :cond_0
    const-string/jumbo v2, "<End>"

    invoke-static {p0, v2}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .end local v1    # "start":I
    :goto_1
    return-void

    .line 96
    :cond_1
    invoke-static {p0, p1}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static objToStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string/jumbo v0, ""

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
