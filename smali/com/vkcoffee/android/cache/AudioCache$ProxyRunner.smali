.class Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyRunner"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field private retries:I

.field sck:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    .line 1062
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    .line 1063
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1067
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1069
    return-void

    .line 1064
    .end local v0    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "req"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1303
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "([A-Za-z-]+): ([^\r]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1304
    .local v2, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1305
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1306
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1308
    :cond_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 46

    .prologue
    .line 1073
    const/4 v15, 0x0

    .line 1075
    .local v15, "is":Ljava/io/FileInputStream;
    const/16 v38, 0x0

    .line 1076
    .local v38, "tmp":I
    :try_start_0
    const-string/jumbo v32, ""

    .line 1077
    .local v32, "s":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/InputStream;->read()I

    move-result v38

    const/16 v41, -0x1

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_1

    .line 1078
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move/from16 v0, v38

    int-to-char v0, v0

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1079
    const-string/jumbo v41, "\r\n\r\n"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1083
    :cond_1
    const-string/jumbo v41, "vk"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v41

    if-nez v41, :cond_3

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/InputStream;->close()V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->close()V

    .line 1299
    .end local v32    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1090
    .restart local v32    # "s":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 1093
    .local v12, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string/jumbo v41, "\r\n"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    aget-object v41, v41, v42

    const-string/jumbo v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x1

    aget-object v41, v41, v42

    const-string/jumbo v42, "/"

    const-string/jumbo v43, ""

    invoke-virtual/range {v41 .. v43}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1094
    const-string/jumbo v41, ".mp3"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 1095
    const/16 v41, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v42

    add-int/lit8 v42, v42, -0x4

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 1097
    :cond_4
    const/16 v41, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 1098
    .local v7, "d":[B
    new-instance v39, Ljava/lang/String;

    const-string/jumbo v41, "UTF-8"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1102
    .end local v7    # "d":[B
    .local v39, "u":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "URL "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v41, "___"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1104
    .local v7, "d":[Ljava/lang/String;
    const/16 v41, 0x1

    aget-object v41, v7, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .local v19, "oid":I
    const/16 v41, 0x2

    aget-object v41, v7, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1106
    .local v4, "aid":I
    new-instance v23, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1108
    .local v23, "range":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    new-instance v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    const/16 v41, 0x0

    move-object/from16 v0, v41

    invoke-direct {v13, v0}, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1109
    .local v13, "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "_"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_10

    .line 1110
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v11, "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    iput-object v11, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 1112
    move/from16 v0, v19

    iput v0, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->oid:I

    .line 1113
    iput v4, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->aid:I

    .line 1114
    sget-object v41, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v41 .. v41}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v41

    move-object/from16 v0, v41

    iput-object v0, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->file:Lcom/vkcoffee/android/AudioFile;

    .line 1115
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "_"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :goto_2
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v8

    .line 1122
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v41

    if-nez v41, :cond_5

    .line 1123
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1125
    :cond_5
    new-instance v9, Ljava/io/File;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v9, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1126
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    .line 1127
    .local v10, "fileExisted":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v41

    if-nez v41, :cond_6

    .line 1128
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1131
    :cond_6
    const/16 v25, 0x0

    .local v25, "rangeStart":I
    const/16 v24, -0x1

    .line 1133
    .local v24, "rangeEnd":I
    const-string/jumbo v41, "range"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 1134
    const-string/jumbo v41, "range"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1135
    .local v22, "r":Ljava/lang/String;
    const-string/jumbo v41, "bytes=([0-9]+)-([0-9]+){0,1}"

    invoke-static/range {v41 .. v41}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 1136
    .local v21, "ptn1":Ljava/util/regex/Pattern;
    const-string/jumbo v41, "range"

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 1137
    .local v18, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v41

    if-eqz v41, :cond_7

    .line 1138
    const/16 v41, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1139
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v41

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_7

    .line 1140
    const/16 v41, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1143
    :cond_7
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Request Range = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " - "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    new-instance v28, Lcom/vkcoffee/android/cache/AudioCache$FileRange;

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/AudioCache$FileRange;-><init>(Lcom/vkcoffee/android/cache/AudioCache$1;)V

    .line 1145
    .local v28, "reqRange":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    move/from16 v0, v25

    move-object/from16 v1, v28

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1146
    move/from16 v0, v24

    move-object/from16 v1, v28

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    .line 1149
    .end local v18    # "matcher1":Ljava/util/regex/Matcher;
    .end local v21    # "ptn1":Ljava/util/regex/Pattern;
    .end local v22    # "r":Ljava/lang/String;
    .end local v28    # "reqRange":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_8
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    .line 1150
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    new-instance v41, Ljava/net/URL;

    const/16 v42, 0x0

    aget-object v42, v7, v42

    invoke-direct/range {v41 .. v42}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 1153
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v41, 0x7530

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1154
    const/16 v41, 0x7530

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1155
    const-string/jumbo v42, "Range"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "bytes="

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v43, "-"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    if-lez v24, :cond_11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    :goto_3
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/16 v33, 0x0

    .line 1157
    .local v33, "sin":Ljava/io/InputStream;
    const-string/jumbo v41, "vk"

    const-string/jumbo v42, "Opening connection"

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const/16 v41, 0x4e20

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1159
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->retries:I

    move/from16 v41, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_a

    .line 1161
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 1162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v33

    .line 1182
    :cond_a
    const/16 v41, 0x0

    :try_start_4
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->retries:I

    .line 1183
    const-string/jumbo v41, "vk"

    const-string/jumbo v42, "Open ok"

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v16

    .line 1185
    .local v16, "len":I
    const-string/jumbo v41, "Content-Range"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1186
    .local v30, "respRange":Ljava/lang/String;
    move/from16 v27, v16

    .line 1187
    .local v27, "realLen":I
    if-eqz v30, :cond_b

    .line 1189
    const-string/jumbo v41, "bytes ([0-9]+)-([0-9]+)/([0-9]+)"

    invoke-static/range {v41 .. v41}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1190
    .local v17, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v41

    if-eqz v41, :cond_b

    .line 1191
    const/16 v41, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1192
    const/16 v41, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1193
    const/16 v41, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1196
    .end local v17    # "m":Ljava/util/regex/Matcher;
    :cond_b
    move/from16 v0, v27

    iput v0, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->l:I

    .line 1197
    const/16 v41, 0x0

    aget-object v41, v7, v41

    move-object/from16 v0, v41

    iput-object v0, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    .line 1210
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Content Length = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", real len = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/16 v41, -0x1

    move/from16 v0, v24

    move/from16 v1, v41

    if-ne v0, v1, :cond_c

    .line 1212
    add-int/lit8 v24, v16, -0x1

    .line 1214
    :cond_c
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Response Range = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " - "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v29, ""

    .line 1217
    .local v29, "resp":Ljava/lang/String;
    iget-object v0, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->file:Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v41, v0

    move/from16 v0, v27

    move-object/from16 v1, v41

    iput v0, v1, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    .line 1219
    if-gtz v25, :cond_d

    if-lez v24, :cond_13

    .line 1220
    :cond_d
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "HTTP/1.1 206 Partial Content\r\nContent-Range: bytes "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "-"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    if-lez v24, :cond_12

    .line 1221
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    :goto_4
    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "\r\n"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "Content-Type: audio/mpeg\r\n"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "Content-Length: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    sub-int v42, v24, v25

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "\r\n\r\n"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1230
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    const-string/jumbo v42, "UTF-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/OutputStream;->write([B)V

    .line 1231
    new-instance v31, Ljava/io/RandomAccessFile;

    const-string/jumbo v41, "rws"

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-direct {v0, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1232
    .local v31, "rf":Ljava/io/RandomAccessFile;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1233
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Range start="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", position="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v31 .. v31}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const/16 v34, 0x0

    .line 1236
    .local v34, "tagBuf":Ljava/io/ByteArrayOutputStream;
    const/16 v36, 0x0

    .local v36, "tagLen":I
    const/16 v37, 0x0

    .line 1238
    .local v37, "tagRead":I
    const/16 v26, 0x0

    .line 1239
    .local v26, "read":I
    const/16 v41, 0x2800

    move/from16 v0, v41

    new-array v5, v0, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .local v5, "buf":[B
    move-object/from16 v35, v34

    .line 1241
    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .local v35, "tagBuf":Ljava/io/ByteArrayOutputStream;
    :goto_6
    :try_start_5
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v26

    if-lez v26, :cond_16

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1243
    const/16 v41, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v41

    move/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1244
    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v41, v0

    if-nez v41, :cond_17

    const/16 v41, 0x0

    aget-byte v41, v5, v41

    const/16 v42, 0x49

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_17

    const/16 v41, 0x1

    aget-byte v41, v5, v41

    const/16 v42, 0x44

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_17

    const/16 v41, 0x2

    aget-byte v41, v5, v41

    const/16 v42, 0x33

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_17

    .line 1246
    const/16 v41, 0x9

    aget-byte v41, v5, v41

    const/16 v42, 0x8

    aget-byte v42, v5, v42

    shl-int/lit8 v42, v42, 0x7

    or-int v41, v41, v42

    const/16 v42, 0x7

    aget-byte v42, v5, v42

    shl-int/lit8 v42, v42, 0xe

    or-int v41, v41, v42

    const/16 v42, 0x6

    aget-byte v42, v5, v42

    shl-int/lit8 v42, v42, 0x15

    or-int v36, v41, v42

    .line 1247
    add-int/lit8 v36, v36, 0x14

    .line 1248
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Found ID3v2 tag, len="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const v41, 0xfa000

    move/from16 v0, v36

    move/from16 v1, v41

    if-ge v0, v1, :cond_17

    .line 1250
    new-instance v34, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1253
    .end local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :goto_7
    if-eqz v34, :cond_e

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_e

    .line 1254
    const/16 v41, 0x0

    sub-int v42, v36, v37

    :try_start_6
    move/from16 v0, v42

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move-object/from16 v0, v34

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1255
    add-int v37, v37, v26

    .line 1257
    :cond_e
    if-eqz v34, :cond_f

    move/from16 v0, v37

    move/from16 v1, v36

    if-lt v0, v1, :cond_f

    .line 1258
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Tag read, len="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    new-instance v20, Lcom/vkcoffee/android/cache/ID3Parser;

    invoke-virtual/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v41

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/ID3Parser;-><init>([B)V

    .line 1260
    .local v20, "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    const/16 v34, 0x0

    .line 1261
    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v41

    if-eqz v41, :cond_14

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 1262
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v41, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    move-object/from16 v0, v41

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v41, "aid"

    move-object/from16 v0, v41

    invoke-virtual {v14, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    const-string/jumbo v41, "oid"

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    sget-object v41, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v42, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1270
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v20    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    :cond_f
    :goto_8
    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v41, v0

    add-int v41, v41, v26

    move/from16 v0, v41

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v35, v34

    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .line 1099
    .end local v4    # "aid":I
    .end local v5    # "buf":[B
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "d":[Ljava/lang/String;
    .end local v8    # "dir":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileExisted":Z
    .end local v11    # "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .end local v13    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    .end local v16    # "len":I
    .end local v19    # "oid":I
    .end local v23    # "range":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v24    # "rangeEnd":I
    .end local v25    # "rangeStart":I
    .end local v26    # "read":I
    .end local v27    # "realLen":I
    .end local v29    # "resp":Ljava/lang/String;
    .end local v30    # "respRange":Ljava/lang/String;
    .end local v31    # "rf":Ljava/io/RandomAccessFile;
    .end local v33    # "sin":Ljava/io/InputStream;
    .end local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v36    # "tagLen":I
    .end local v37    # "tagRead":I
    .end local v39    # "u":Ljava/lang/String;
    :catch_0
    move-exception v40

    .line 1100
    .local v40, "x":Ljava/lang/Exception;
    move-object/from16 v39, v32

    .restart local v39    # "u":Ljava/lang/String;
    goto/16 :goto_1

    .line 1117
    .end local v40    # "x":Ljava/lang/Exception;
    .restart local v4    # "aid":I
    .restart local v7    # "d":[Ljava/lang/String;
    .restart local v13    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    .restart local v19    # "oid":I
    .restart local v23    # "range":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    :cond_10
    :try_start_7
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "_"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    check-cast v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;

    .line 1118
    .restart local v13    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    iget-object v11, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .restart local v11    # "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    goto/16 :goto_2

    .line 1155
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "dir":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileExisted":Z
    .restart local v24    # "rangeEnd":I
    .restart local v25    # "rangeStart":I
    :cond_11
    const-string/jumbo v41, ""

    goto/16 :goto_3

    .line 1164
    .restart local v33    # "sin":Ljava/io/InputStream;
    :catch_1
    move-exception v40

    .line 1165
    .local v40, "x":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    const-string/jumbo v42, "HTTP/1.1 404 Not Found\r\n\r\n"

    const-string/jumbo v43, "UTF-8"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/OutputStream;->write([B)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/InputStream;->close()V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 1290
    .end local v4    # "aid":I
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "d":[Ljava/lang/String;
    .end local v8    # "dir":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileExisted":Z
    .end local v11    # "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .end local v12    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    .end local v19    # "oid":I
    .end local v23    # "range":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .end local v24    # "rangeEnd":I
    .end local v25    # "rangeStart":I
    .end local v32    # "s":Ljava/lang/String;
    .end local v33    # "sin":Ljava/io/InputStream;
    .end local v39    # "u":Ljava/lang/String;
    .end local v40    # "x":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v40

    .line 1291
    .local v40, "x":Ljava/lang/Exception;
    const-string/jumbo v41, "vk"

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1292
    if-eqz v15, :cond_2

    .line 1294
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 1295
    :catch_3
    move-exception v41

    goto/16 :goto_0

    .line 1170
    .end local v40    # "x":Ljava/lang/Exception;
    .restart local v4    # "aid":I
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "d":[Ljava/lang/String;
    .restart local v8    # "dir":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "fileExisted":Z
    .restart local v11    # "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/AudioCache$FileRange;>;"
    .restart local v12    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "info":Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;
    .restart local v19    # "oid":I
    .restart local v23    # "range":Lcom/vkcoffee/android/cache/AudioCache$FileRange;
    .restart local v24    # "rangeEnd":I
    .restart local v25    # "rangeStart":I
    .restart local v32    # "s":Ljava/lang/String;
    .restart local v33    # "sin":Ljava/io/InputStream;
    .restart local v39    # "u":Ljava/lang/String;
    :catch_4
    move-exception v40

    .line 1171
    .local v40, "x":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v41, "vk"

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->retries:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->retries:I

    .line 1173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->retries:I

    move/from16 v41, v0

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_9

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    const-string/jumbo v42, "HTTP/1.1 404 Not Found\r\n\r\n"

    const-string/jumbo v43, "UTF-8"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/OutputStream;->write([B)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/InputStream;->close()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->close()V

    goto/16 :goto_0

    .line 1221
    .end local v40    # "x":Ljava/io/IOException;
    .restart local v16    # "len":I
    .restart local v27    # "realLen":I
    .restart local v29    # "resp":Ljava/lang/String;
    .restart local v30    # "respRange":Ljava/lang/String;
    :cond_12
    const-string/jumbo v41, ""

    goto/16 :goto_4

    .line 1225
    :cond_13
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "HTTP/1.1 200 OK\r\nContent-Type: audio/mpeg\r\nContent-Length: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "\r\n\r\n"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v29

    goto/16 :goto_5

    .line 1267
    .restart local v5    # "buf":[B
    .restart local v20    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    .restart local v26    # "read":I
    .restart local v31    # "rf":Ljava/io/RandomAccessFile;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v36    # "tagLen":I
    .restart local v37    # "tagRead":I
    :cond_14
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/cache/ID3Parser;->getArtist()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/cache/ID3Parser;->getAlbum()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_8

    .line 1274
    .end local v20    # "parser":Lcom/vkcoffee/android/cache/ID3Parser;
    :catch_5
    move-exception v40

    .line 1276
    .local v40, "x":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    const-string/jumbo v41, "vk"

    const-string/jumbo v42, "Audio proxy error"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1279
    .end local v40    # "x":Ljava/lang/Exception;
    :goto_a
    invoke-virtual/range {v31 .. v31}, Ljava/io/RandomAccessFile;->close()V

    .line 1281
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V

    .line 1282
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/InputStream;->close()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/net/Socket;->close()V

    .line 1286
    const-string/jumbo v41, "vk"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "DL end, rStart="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", rEnd="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", len="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    sget-object v41, Lcom/vkcoffee/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "_"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_15

    sget v41, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v19

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    :cond_15
    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v41, v0

    if-nez v41, :cond_2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkcoffee/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 1288
    const/16 v41, 0x1

    iget-object v0, v13, Lcom/vkcoffee/android/cache/AudioCache$RangesInfo;->file:Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_16
    move-object/from16 v34, v35

    .line 1277
    .end local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a

    .line 1274
    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v40

    move-object/from16 v34, v35

    .end local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_9

    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_17
    move-object/from16 v34, v35

    .end local v35    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7
.end method
