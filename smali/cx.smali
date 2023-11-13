.class final Lcx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldv;


# static fields
.field private static final b:Ldi;


# instance fields
.field private final a:Ldi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lda;

    invoke-direct {v0}, Lda;-><init>()V

    sput-object v0, Lcx;->b:Ldi;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcz;

    const/4 v1, 0x2

    new-array v1, v1, [Ldi;

    .line 2
    sget-object v2, Lbz;->a:Lbz;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lcx;->a()Ldi;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcz;-><init>([Ldi;)V

    .line 4
    invoke-direct {p0, v0}, Lcx;-><init>(Ldi;)V

    return-void
.end method

.method private constructor <init>(Ldi;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfoFactory"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 6
    invoke-static {p1, v0}, Lcc;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldi;

    iput-object p1, p0, Lcx;->a:Ldi;

    return-void
.end method

.method private static a()Ldi;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    sget-object v0, Lcx;->b:Ldi;

    return-object v0
.end method

.method private static a(Ldf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfo"
        }
    .end annotation

    .line 38
    invoke-interface {p0}, Ldf;->a()I

    move-result p0

    sget v0, Lby$e;->h:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ldw;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .line 1
    const-class v0, Lby;

    invoke-static {p1}, Ldy;->a(Ljava/lang/Class;)V

    .line 2
    iget-object p0, p0, Lcx;->a:Ldi;

    invoke-interface {p0, p1}, Ldi;->b(Ljava/lang/Class;)Ldf;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ldf;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Ldy;->c:Lem;

    .line 6
    sget-object p1, Lbq;->a:Lbr;

    .line 7
    invoke-interface {v1}, Ldf;->c()Ldh;

    move-result-object v0

    .line 8
    invoke-static {p0, p1, v0}, Ldl;->a(Lem;Lbr;Ldh;)Ldl;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Ldy;->a:Lem;

    .line 10
    invoke-static {}, Lbq;->a()Lbr;

    move-result-object p1

    .line 11
    invoke-interface {v1}, Ldf;->c()Ldh;

    move-result-object v0

    .line 12
    invoke-static {p0, p1, v0}, Ldl;->a(Lem;Lbr;Ldh;)Ldl;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 14
    invoke-static {v1}, Lcx;->a(Ldf;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    sget-object v2, Ldq;->b:Ldn;

    .line 16
    sget-object v3, Lct;->b:Lct;

    .line 17
    sget-object v4, Ldy;->c:Lem;

    .line 18
    sget-object v5, Lbq;->a:Lbr;

    .line 19
    sget-object v6, Ldg;->b:Ldd;

    .line 20
    invoke-static/range {v1 .. v6}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    goto :goto_0

    .line 21
    :cond_2
    sget-object v2, Ldq;->b:Ldn;

    .line 22
    sget-object v3, Lct;->b:Lct;

    .line 23
    sget-object v4, Ldy;->c:Lem;

    const/4 v5, 0x0

    .line 24
    sget-object v6, Ldg;->b:Ldd;

    .line 25
    invoke-static/range {v1 .. v6}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    return-object p0

    .line 26
    :cond_3
    invoke-static {v1}, Lcx;->a(Ldf;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 27
    sget-object v2, Ldq;->a:Ldn;

    .line 28
    sget-object v3, Lct;->a:Lct;

    .line 29
    sget-object v4, Ldy;->a:Lem;

    .line 30
    invoke-static {}, Lbq;->a()Lbr;

    move-result-object v5

    .line 31
    sget-object v6, Ldg;->a:Ldd;

    .line 32
    invoke-static/range {v1 .. v6}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    return-object p0

    .line 33
    :cond_4
    sget-object v2, Ldq;->a:Ldn;

    .line 34
    sget-object v3, Lct;->a:Lct;

    .line 35
    sget-object v4, Ldy;->b:Lem;

    const/4 v5, 0x0

    .line 36
    sget-object v6, Ldg;->a:Ldd;

    .line 37
    invoke-static/range {v1 .. v6}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    :goto_0
    return-object p0
.end method
