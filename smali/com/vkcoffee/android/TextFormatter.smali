.class public Lcom/vkcoffee/android/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v0, "/"

    const-string/jumbo v1, "//"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static processString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x2f

    const/4 v12, 0x1

    .line 21
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 22
    .local v8, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 23
    .local v7, "spans":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 24
    .local v3, "offsets":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "offset":I
    const/4 v5, -0x1

    .local v5, "pos":I
    const/4 v4, 0x0

    .line 25
    .local v4, "outOffset":I
    :goto_0
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 26
    sub-int v9, v5, v2

    if-lez v9, :cond_0

    .line 27
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 28
    sub-int v9, v5, v2

    add-int/2addr v4, v9

    .line 30
    :cond_0
    add-int/lit8 v2, v5, 0x1

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 32
    .local v0, "cmd":C
    add-int/lit8 v2, v2, 0x1

    .line 33
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 35
    :sswitch_0
    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    goto :goto_0

    .line 39
    :sswitch_1
    new-instance v9, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;

    sget-object v10, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    invoke-direct {v9, v10}, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;-><init>(Lcom/vkcoffee/android/ui/Font;)V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :sswitch_2
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :sswitch_3
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :sswitch_4
    new-instance v9, Landroid/text/style/UnderlineSpan;

    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :sswitch_5
    new-instance v9, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v9}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :sswitch_6
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    add-int/lit8 v10, v2, 0x8

    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v2, v2, 0x8

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :sswitch_7
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v2, v2, 0x3

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 69
    :sswitch_8
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    .local v1, "off":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    .line 71
    .local v6, "span":Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-virtual {v8, v6, v1, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 76
    .end local v0    # "cmd":C
    .end local v1    # "off":I
    .end local v6    # "span":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 79
    :cond_2
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 80
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Some spans don\'t have their ends defined with /e"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 82
    :cond_3
    return-object v8

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_0
        0x62 -> :sswitch_2
        0x63 -> :sswitch_6
        0x65 -> :sswitch_8
        0x69 -> :sswitch_3
        0x6d -> :sswitch_1
        0x73 -> :sswitch_5
        0x75 -> :sswitch_4
        0x7a -> :sswitch_7
    .end sparse-switch
.end method
