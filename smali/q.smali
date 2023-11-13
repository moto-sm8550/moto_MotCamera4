.class public final Lq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbo;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Ln;->c:Ln;

    .line 2
    sget-object v2, Lp;->c:Lp;

    .line 3
    sget-object v5, Lex;->k:Lex;

    const-class v6, Lp;

    const/4 v3, 0x0

    const v4, 0x9198309

    move-object v1, v2

    .line 4
    invoke-static/range {v0 .. v6}, Lby;->a(Ldh;Ljava/lang/Object;Ldh;Lcg;ILex;Ljava/lang/Class;)Lbo;

    move-result-object v0

    sput-object v0, Lq;->a:Lbo;

    return-void
.end method
