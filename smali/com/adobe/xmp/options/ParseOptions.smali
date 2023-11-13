.class public final Lcom/adobe/xmp/options/ParseOptions;
.super Lcom/adobe/xmp/options/Options;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-void
.end method


# virtual methods
.method public final getFixControlChars()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final getValidOptions()I
    .locals 0

    const/16 p0, 0x3d

    return p0
.end method
