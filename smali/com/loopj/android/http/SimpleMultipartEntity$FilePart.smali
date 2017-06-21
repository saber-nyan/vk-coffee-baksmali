.class Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/SimpleMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public header:[B

.field final synthetic this$0:Lcom/loopj/android/http/SimpleMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 186
    iput-object p3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "customFileName"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    .end local p5    # "customFileName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2, p5, p4}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 181
    iput-object p3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 182
    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v1, "headerStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$000(Lcom/loopj/android/http/SimpleMultipartEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 195
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v2, p1, p2}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$100(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v2, p3}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$200(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 197
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$300()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 198
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SimpleMultipartEntity"

    const-string v3, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getTotalLength()J
    .locals 6

    .prologue
    .line 207
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 208
    .local v0, "streamLength":J
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 213
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    iget-object v4, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v4, v4

    invoke-static {v3, v4}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;I)V

    .line 215
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 216
    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 218
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 219
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 220
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v3, v0}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;I)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 223
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v4}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;I)V

    .line 224
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 225
    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 226
    return-void
.end method
