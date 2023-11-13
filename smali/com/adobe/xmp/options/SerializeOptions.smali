.class public final Lcom/adobe/xmp/options/SerializeOptions;
.super Lcom/adobe/xmp/options/Options;


# instance fields
.field public baseIndent:I

.field public indent:Ljava/lang/String;

.field public newline:Ljava/lang/String;

.field public padding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    const-string v0, "\n"

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string v0, "  "

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    const/16 p1, 0x800

    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    const-string p1, "\n"

    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string p1, "  "

    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    .line 1
    iget v1, p0, Lcom/adobe/xmp/options/Options;->options:I

    .line 2
    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>(I)V

    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 3
    iput v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 4
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 8
    iget p0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 9
    iput p0, v0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 4

    iget p0, p0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "UTF-16BE"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    const-string p0, "UTF-16LE"

    return-object p0

    :cond_3
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public final getIncludeThumbnailPad()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final getOmitPacketWrapper()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final getValidOptions()I
    .locals 0

    const/16 p0, 0x1370

    return p0
.end method
