.class public final Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/c;

.field private static final b:Ln/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln/c;

    invoke-direct {v0}, Ln/c;-><init>()V

    sput-object v0, Ln/c;->a:Ln/c;

    sget-object v0, Ln/j;->g:Ln/j;

    sput-object v0, Ln/c;->b:Ln/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ln/j;
    .locals 1

    .line 1
    sget-object v0, Ln/c;->b:Ln/j;

    return-object v0
.end method
