.class public final Lcom/adobe/xmp/options/PropertyOptions;
.super Lcom/adobe/xmp/options/Options;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

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

    return-void
.end method


# virtual methods
.method public final assertConsistency(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    and-int/lit16 p0, p1, 0x100

    const/16 v0, 0x67

    if-lez p0, :cond_1

    and-int/lit16 p0, p1, 0x200

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    and-int/lit8 p0, p1, 0x2

    if-lez p0, :cond_3

    and-int/lit16 p0, p1, 0x300

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final getHasLanguage()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final getValidOptions()I
    .locals 0

    const p0, -0x7fffe00e

    return p0
.end method

.method public final isArray()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final isArrayAltText()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final isArrayAlternate()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final isCompositeProperty()Z
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/lit16 p0, p0, 0x300

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSchemaNode()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final isStruct()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    return p0
.end method

.method public final mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    iget p1, p1, Lcom/adobe/xmp/options/Options;->options:I

    or-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    iput p1, p0, Lcom/adobe/xmp/options/Options;->options:I

    :cond_0
    return-void
.end method

.method public final setArray()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 2

    const/16 v0, 0x200

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setArrayAltText()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setArrayAlternate()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 2

    const/16 v0, 0x800

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setArrayOrdered()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 2

    const/16 v0, 0x400

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setHasLanguage(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setHasType(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public final setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method
