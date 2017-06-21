.class public Lcom/vkcoffee/android/LinkParser;
.super Ljava/lang/Object;
.source "LinkParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/LinkParser$CharRange;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x7

.field public static final BOARD_REPLIES_PATTERN:Ljava/util/regex/Pattern;

.field public static final HASHTAGS:I = 0x4

.field public static final HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

.field public static final MENTIONS_PATTERN:Ljava/util/regex/Pattern;

.field public static final URLS:I = 0x1

.field public static final URL_PATTERN:Ljava/util/regex/Pattern;

.field public static final VK_MENTIONS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "(?:http(?:s)?:\\/\\/)?(?:(?:[a-z\u0430-\u044f]|[a-z\u0430-\u044f0-9_-]{2,})\\.)+(?:[a-z][a-z0-9-]{1,20}|\u0440\u0444)(?:\\/[!a-z0-9\u0430-\u044f\u0451_z%~:\\.,-]*)*(?:[\\?&#][a-z0-9\\[\\]_]*(?:=?[a-z0-9~\\._=,%\\|+!-]*))*(?<![\\.,:!?-])"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 22
    const-string/jumbo v0, "\\[((?:id|club)[0-9]+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/LinkParser;->MENTIONS_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    const-string/jumbo v0, "\\[((?:id|club)[0-9]+):bp[0-9_-]+\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/LinkParser;->BOARD_REPLIES_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    const-string/jumbo v0, "(#[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0454\u0404\u0490\u0491\u0407\u0457\u0406\u0456\u0408\u0458\u040e\u045e_\\d]*[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e][a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e_\\d]+|#[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e_\\d]+[a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e][a-zA-Z\u0430-\u044f\u0410-\u042f\u0451\u0401\u0456\u0458\u0457\u0454\u0491\u0406\u0408\u0404\u0407\u0490\u040e\u045e_\\d]*)(?:@([a-zA-Z0-9\\._]{2,}))?(?<![\\.,:-])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/LinkParser;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method public static isLink(Ljava/lang/String;)Z
    .locals 4
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 186
    sget-object v2, Lcom/vkcoffee/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 187
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "flags"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "flags"    # I
    .param p2, "referrer"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, p2, v0, v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 21
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "flags"    # I
    .param p2, "referrer"    # Ljava/lang/String;
    .param p3, "listReferrer"    # Ljava/lang/String;
    .param p4, "postId"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p0, :cond_1

    .line 36
    const-string/jumbo p0, ""

    .line 118
    .end local p0    # "in":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "in":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 39
    .local v16, "usedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/LinkParser$CharRange;>;"
    const/4 v12, 0x0

    .line 40
    .local v12, "result":Landroid/text/SpannableStringBuilder;
    and-int/lit8 v17, p1, 0x1

    if-lez v17, :cond_9

    .line 41
    sget-object v17, Lcom/vkcoffee/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 42
    .local v7, "matcher":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 43
    .local v8, "offset":I
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 44
    if-nez v12, :cond_3

    .line 45
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .end local v12    # "result":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    .restart local v12    # "result":Landroid/text/SpannableStringBuilder;
    :cond_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    if-lez v17, :cond_4

    .line 48
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    sub-int v17, v17, v8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 49
    .local v9, "prev":C
    const/16 v17, 0x40

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    .line 55
    .end local v9    # "prev":C
    :cond_4
    new-instance v15, Lcom/vkcoffee/android/LinkSpan;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/vkcoffee/android/LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v15, "span":Lcom/vkcoffee/android/LinkSpan;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, "replacement":Ljava/lang/String;
    const/4 v14, -0x1

    .line 58
    .local v14, "slashIndex":I
    const-string/jumbo v17, "http:"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string/jumbo v17, "https:"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 59
    :cond_5
    const/16 v17, 0x2f

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 63
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v14

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 64
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    add-int/lit8 v19, v14, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 66
    :cond_6
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    sub-int v17, v17, v8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    sub-int v18, v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    .line 67
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    sub-int v17, v17, v8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    sub-int v18, v18, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    add-int v8, v8, v17

    .line 70
    sget-object v17, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 71
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "usedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/LinkParser$CharRange;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v16    # "usedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/LinkParser$CharRange;>;"
    :cond_7
    new-instance v17, Lcom/vkcoffee/android/LinkParser$CharRange;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    sub-int v18, v18, v8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    sub-int v19, v19, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/vkcoffee/android/LinkParser$CharRange;-><init>(II)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 61
    :cond_8
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    goto/16 :goto_2

    .line 76
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "offset":I
    .end local v11    # "replacement":Ljava/lang/String;
    .end local v14    # "slashIndex":I
    .end local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    :cond_9
    and-int/lit8 v17, p1, 0x4

    if-lez v17, :cond_12

    .line 77
    sget-object v18, Lcom/vkcoffee/android/LinkParser;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    if-nez v12, :cond_f

    move-object/from16 v17, p0

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 78
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_a
    :goto_4
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 80
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    .line 81
    .local v13, "s":I
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 82
    .local v4, "e":I
    const/4 v6, 0x0

    .line 83
    .local v6, "intersects":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_d

    .line 84
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/LinkParser$CharRange;

    .line 85
    .local v10, "r":Lcom/vkcoffee/android/LinkParser$CharRange;
    iget v0, v10, Lcom/vkcoffee/android/LinkParser$CharRange;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_b

    iget v0, v10, Lcom/vkcoffee/android/LinkParser$CharRange;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v13, v0, :cond_c

    :cond_b
    iget v0, v10, Lcom/vkcoffee/android/LinkParser$CharRange;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_10

    iget v0, v10, Lcom/vkcoffee/android/LinkParser$CharRange;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v4, v0, :cond_10

    .line 86
    :cond_c
    const/4 v6, 0x1

    .line 90
    .end local v10    # "r":Lcom/vkcoffee/android/LinkParser$CharRange;
    :cond_d
    if-nez v6, :cond_a

    .line 93
    if-nez v12, :cond_e

    .line 94
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .end local v12    # "result":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    .restart local v12    # "result":Landroid/text/SpannableStringBuilder;
    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_11

    .line 97
    new-instance v15, Lcom/vkcoffee/android/LinkSpan;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "vkontakte://search/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/vkcoffee/android/LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .restart local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .end local v4    # "e":I
    .end local v5    # "i":I
    .end local v6    # "intersects":Z
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "s":I
    .end local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    :cond_f
    move-object/from16 v17, v12

    .line 77
    goto/16 :goto_3

    .line 83
    .restart local v4    # "e":I
    .restart local v5    # "i":I
    .restart local v6    # "intersects":Z
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "r":Lcom/vkcoffee/android/LinkParser$CharRange;
    .restart local v13    # "s":I
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 100
    .end local v10    # "r":Lcom/vkcoffee/android/LinkParser$CharRange;
    :cond_11
    new-instance v15, Lcom/vkcoffee/android/LinkSpan;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "vkontakte://vk.com/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/vkcoffee/android/LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .restart local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 105
    .end local v4    # "e":I
    .end local v5    # "i":I
    .end local v6    # "intersects":Z
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "s":I
    .end local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    :cond_12
    and-int/lit8 v17, p1, 0x2

    if-lez v17, :cond_15

    .line 106
    sget-object v18, Lcom/vkcoffee/android/LinkParser;->MENTIONS_PATTERN:Ljava/util/regex/Pattern;

    if-nez v12, :cond_14

    move-object/from16 v17, p0

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 107
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 108
    .restart local v8    # "offset":I
    :goto_7
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 109
    if-nez v12, :cond_13

    .line 110
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .end local v12    # "result":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    .restart local v12    # "result":Landroid/text/SpannableStringBuilder;
    :cond_13
    new-instance v15, Lcom/vkcoffee/android/LinkSpan;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "vkontakte://vk.com/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/vkcoffee/android/LinkSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .restart local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    sub-int v17, v17, v8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    sub-int v18, v18, v8

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    .line 114
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    sub-int v17, v17, v8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    sub-int v18, v18, v8

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 115
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    add-int v8, v8, v17

    .line 116
    goto/16 :goto_7

    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "offset":I
    .end local v15    # "span":Lcom/vkcoffee/android/LinkSpan;
    :cond_14
    move-object/from16 v17, v12

    .line 106
    goto/16 :goto_6

    .line 118
    :cond_15
    if-eqz v12, :cond_0

    move-object/from16 p0, v12

    goto/16 :goto_0
.end method

.method public static stripMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 122
    sget-object v2, Lcom/vkcoffee/android/LinkParser;->MENTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v1, "result":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .restart local v1    # "result":Ljava/lang/StringBuffer;
    sget-object v2, Lcom/vkcoffee/android/LinkParser;->BOARD_REPLIES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 131
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static truncatePost(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "addShowMore"    # Z

    .prologue
    const/16 v13, 0x12c

    const/16 v12, 0x118

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 143
    const/4 v6, -0x1

    .line 144
    .local v6, "truncateAt":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-le v7, v11, :cond_1

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "index":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_0

    .line 148
    const/16 v7, 0xa

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    move v6, v1

    .line 152
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v12, :cond_3

    if-eq v6, v9, :cond_2

    if-le v6, v13, :cond_3

    .line 153
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 154
    if-ne v6, v9, :cond_3

    .line 155
    const/16 v6, 0x118

    .line 158
    :cond_3
    if-ne v6, v9, :cond_4

    .line 170
    .end local p0    # "in":Ljava/lang/CharSequence;
    :goto_1
    return-object p0

    .line 161
    .restart local p0    # "in":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 162
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, p0, v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 163
    const-string/jumbo v7, "...\n"

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    if-eqz p1, :cond_5

    .line 165
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v7

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0803ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 166
    .local v2, "showMore":Landroid/text/Spannable;
    new-instance v3, Lcom/vkcoffee/android/ExpandTextSpan;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lcom/vkcoffee/android/ExpandTextSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v3, "span":Lcom/vkcoffee/android/ExpandTextSpan;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {v2, v3, v10, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 168
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .end local v2    # "showMore":Landroid/text/Spannable;
    .end local v3    # "span":Lcom/vkcoffee/android/ExpandTextSpan;
    :cond_5
    move-object p0, v4

    .line 170
    goto :goto_1
.end method

.method public static tryExtractLink(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/lang/CharSequence;

    .prologue
    .line 178
    sget-object v1, Lcom/vkcoffee/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 179
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
