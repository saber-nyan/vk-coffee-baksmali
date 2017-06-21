.class public Lcom/vkcoffee/android/utils/SpanHelper;
.super Ljava/lang/Object;
.source "SpanHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 11
    move v2, v4

    .line 12
    .local v2, "currentIndex":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "currentIndex":I
    .local v3, "currentIndex":I
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_3

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "currentIndex":I
    .restart local v2    # "currentIndex":I
    invoke-static {v1, v3}, Lcom/vkcoffee/android/utils/SpanHelper;->getArgIndex(Landroid/text/SpannableStringBuilder;I)I

    move-result v0

    .local v0, "argIndex":I
    if-ltz v0, :cond_0

    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 13
    aget-object v5, p1, v0

    .line 14
    .local v5, "insertObject":Ljava/lang/Object;
    add-int/lit8 v6, v2, 0x1

    invoke-static {v1, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->getCharAtSafety(Landroid/text/SpannableStringBuilder;I)C

    move-result v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_1

    .line 15
    add-int/lit8 v6, v4, 0x4

    invoke-static {v1, v4, v6, v5}, Lcom/vkcoffee/android/utils/SpanHelper;->replaceObj(Landroid/text/SpannableStringBuilder;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 16
    add-int/lit8 v4, v4, 0x4

    .line 10
    .end local v0    # "argIndex":I
    .end local v5    # "insertObject":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    .restart local v0    # "argIndex":I
    .restart local v5    # "insertObject":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v6, v2, 0x1

    invoke-static {v1, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->getCharAtSafety(Landroid/text/SpannableStringBuilder;I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x2

    invoke-static {v1, v6}, Lcom/vkcoffee/android/utils/SpanHelper;->getCharAtSafety(Landroid/text/SpannableStringBuilder;I)C

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_0

    .line 18
    add-int/lit8 v6, v4, 0x5

    invoke-static {v1, v4, v6, v5}, Lcom/vkcoffee/android/utils/SpanHelper;->replaceObj(Landroid/text/SpannableStringBuilder;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 19
    add-int/lit8 v4, v4, 0x5

    goto :goto_1

    .line 23
    .end local v0    # "argIndex":I
    .end local v2    # "currentIndex":I
    .end local v5    # "insertObject":Ljava/lang/Object;
    :cond_2
    return-object v1

    .restart local v3    # "currentIndex":I
    :cond_3
    move v2, v3

    .end local v3    # "currentIndex":I
    .restart local v2    # "currentIndex":I
    goto :goto_1
.end method

.method private static getArgIndex(Landroid/text/SpannableStringBuilder;I)I
    .locals 1
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static getCharAtSafety(Landroid/text/SpannableStringBuilder;I)C
    .locals 1
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .prologue
    .line 31
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private static replaceObj(Landroid/text/SpannableStringBuilder;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p3, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 36
    check-cast p3, Ljava/lang/CharSequence;

    .end local p3    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .restart local p3    # "o":Ljava/lang/Object;
    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
