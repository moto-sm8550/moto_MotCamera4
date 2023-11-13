.class final Lfc;
.super Lbp;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbp;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Ldh;I)Lbo;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string/jumbo p1, "y"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const p0, 0x9198308

    if-eq p2, p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    sget-object p0, Ls;->a:Lbo;

    return-object p0

    :cond_2
    const p0, 0x9198309

    if-eq p2, p0, :cond_4

    const p0, 0xb706546

    if-eq p2, p0, :cond_3

    return-object v0

    .line 3
    :cond_3
    sget-object p0, Lu;->a:Lbo;

    return-object p0

    .line 4
    :cond_4
    sget-object p0, Lq;->a:Lbo;

    return-object p0
.end method
